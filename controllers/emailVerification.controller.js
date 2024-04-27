const db = require("../config/database.config");
const catModel = require("../middlewares/cat");
const helperFunctions = require("../middlewares/helperFunctions");
const crypto = require("../middlewares/crypto");

exports.emailVerification = async (req, res) => {

}


exports.emailVerificationRequestAPI = async (req, res) => {
  try {
    const { encUserId } = req.body
    const decUserId = crypto.decrypt(encUserId)
    const sendMail = helperFunctions.mailSend

    db.query("SELECT * FROM `otp` WHERE `otp`.`user_id` = ?", [decUserId], (err11, res11)=>{
      if (!err11) {
        if (res11.length == 0) {
          const otp = helperFunctions.generateOTP()
          console.log(otp)
          db.query("INSERT INTO `otp` (`otp_id`, `user_id`, `otp_code`, `generate_time`) VALUES (NULL, ?, ?, current_timestamp())",
          [decUserId, otp], (err1, res1) => {
            if (!err1) {
              db.query("SELECT * FROM `user` WHERE `user_id` = ?", [decUserId], (err2, res2)=>{
                if (!err2) {
                  console.log('Email : ', res2[0].user_email)
                  sendMail(res2[0].user_email, otp, 'Reset Password')
                  res.status(200).send({
                    status: 'success',
                    encUserId,
                  })
                } else {
                  console.error(err2)
                }
              })
            } else {
              res.status(503).send(err1)
            }
          })
        } else {
          console.log('Already OTP requested. Check your mail !')
          res.status(200).send({
            status: false,
            message: 'Already OTP requested. Check your mail !',
          })
        }
      } else {
        console.error(err11)
        res.status(503).send(err11)
      }
    })
  } catch(err) {
    console.error(err)
    res.status(500).send("Internal Server Error !")
  }
}

exports.emailVerificationPostAPI = (req, res) => {
  try {
    const { otp, encUserId } = req.body
    const decUserId = crypto.decrypt(encUserId)

    db.query("SELECT * FROM `otp` WHERE `user_id` = ?", [decUserId], (err1, res1)=>{
      if (!err1) {
        if (res1[0].otp_code == otp) {
          db.query("DELETE FROM `otp` WHERE `otp`.`user_id` = ?", [decUserId], (err2, res2)=>{
            if (!err2) {
              db.query("UPDATE `user` SET `reg_completed` = '1' WHERE `user`.`user_id` = ?", [decUserId], (err3, res3)=>{
                if (!err3) {
                  res.status(200).send({
                    status: 'success',
                  })
                } else {
                  console.error(err3)
                  res.status(500).send(err3)
                }
              })
            } else {
              console.error(err2)
              res.status(500).send(err2)
            }
          })
        } else {
          const encMsg = crypto.encrypt('Wrong OTP !')
          const encUserIdEncoded = encodeURIComponent(encUserId);
          const encMsgEncoded = encodeURIComponent(encMsg);
          res.redirect(`/emailVerificationRequest/${encUserIdEncoded}/${encMsgEncoded}`)
        }
      } else {
        console.error(err1)
        res.status(500).send(err1)
      }
    })
  } catch(err) {
    console.error(err)
    res.status(500).send('Internal Server Error !')
  }
}


exports.emailVerificationRequest = async (req, res) => {
  try {
    const { encUserId, message } = req.params
    const encMsg = message ? message: null
    const decUserId = crypto.decrypt(encUserId)
    const verificationStatus = crypto.decrypt(encMsg)
    console.log('Message ', verificationStatus, encMsg)
    db.query("SELECT * FROM `otp` WHERE `otp`.`user_id` = ?", [decUserId], (err11, res11)=>{
      if (!err11) {
        if (res11.length == 0) {
          const otp = helperFunctions.generateOTP()
          console.log(otp)
          db.query("INSERT INTO `otp` (`otp_id`, `user_id`, `otp_code`, `generate_time`) VALUES (NULL, ?, ?, current_timestamp())",
          [decUserId, otp], (err1, res1) => {
            if (!err1) {
              const sendMail = helperFunctions.mailSend
              db.query("SELECT * FROM `user` WHERE `user_id` = ?", [decUserId], (err2, res2)=>{
                if (!err2) {
                  sendMail(res2[0].user_email, otp, 'Email Verification')
                  res.render("emailVerification", {
                    ogImage: "https://www.localhost:3000/images/logo-og.webp",
                    ogTitle: "Save71 Connects You and the World through Business.",
                    ogUrl: "https://www.localhost:3000",
                    verificationStatus,
                    encUserId,
                });
                } else {
                  res.send(err1)
                }
                })
            } else {
              console.error(err2)
              res.send(err2)
            }
          })
        } else {
          // const localTime = helperFunctions.formatTimestampToLocale(res11[0].generate_time)

          res.render("emailVerification", {
            ogImage: "https://www.localhost:3000/images/logo-og.webp",
            ogTitle: "Save71 Connects You and the World through Business.",
            ogUrl: "https://www.localhost:3000",
            verificationStatus: (verificationStatus ? verificationStatus : 'Already OTP requested. Check your mail !'),
            encUserId,
          });
        }
      } else {
        console.error(err11)
        res.send(err11)
      }
    })
  } catch(err) {
    console.error(err)
    res.status(500).send("Internal Server Error !")
  }
}

exports.emailVerificationPost = (req, res) => {
  try {
    const { otp, encUserId } = req.body
    const decUserId = crypto.decrypt(encUserId)

    db.query("SELECT * FROM `otp` WHERE `user_id` = ?", [decUserId], (err1, res1)=>{
      if (!err1) {
        if (res1[0].otp_code == otp) {
          db.query("DELETE FROM `otp` WHERE `otp`.`user_id` = ?", [decUserId], (err2, res2)=>{
            if (!err2) {
              db.query("UPDATE `user` SET `reg_completed` = '1' WHERE `user`.`user_id` = ?", [decUserId], (err3, res3)=>{
                if (!err3) {
                  res.redirect("/login")
                } else {
                  res.send(err3)
                }
              })
            } else {
              res.send(err2)
            }
          })
        } else {
          const encMsg = crypto.encrypt('Wrong OTP !')
          const encUserIdEncoded = encodeURIComponent(encUserId);
          const encMsgEncoded = encodeURIComponent(encMsg);
          res.redirect(`/emailVerificationRequest/${encUserIdEncoded}/${encMsgEncoded}`)
        }
      } else {
        res.send(err1)
      }
    })
  } catch(err) {
    console.error(err)
    res.status(500).send('Internal Server Error !')
  }
};