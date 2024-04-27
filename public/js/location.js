async function sendPostRequest(url, data) {
  try {
    const response = await fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
      // body: data
    });
    const result = await response.text();
    // console.log('Response from server:', result);
    return;
  } catch (error) {
    console.error('Error:', error);
  }
}
async function getDecLoc(url) {
  try {
    const response = await fetch(url);
    const data = await response.json();
    const latitude = data.latitude;
    const longitude = data.longitude;
    return { latitude, longitude };
  } catch (error) {
    console.error('Error:', error);
    throw error;
  }
}

async function getLocation() {
  var locationCookie = await getCookie();
  if (!locationCookie) {
    if (navigator.geolocation) {
      // Show loading GIF container until location is obtained
      document.getElementById('loading-container').style.display = 'flex';

      navigator.geolocation.getCurrentPosition(showPosition, showError);
      navigator.geolocation.getCurrentPosition((position) => {
        // console.log('pos: ', position.coords.latitude, position.coords.longitude);
      });
    } else {
      alert('Geolocation is not supported by this browser.');
    }
  } else {
    // alert('Area Shop is accessible now !');
    console.log('Location cookie found');
    // console.log('Location cookie:', locationCookie);
  }
}

function showPosition(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;
    var location = {
        latitude: latitude,
        longitude: longitude
    };

    const locCookie = {
      name: 'location',
      data: location,
      expire: 24 * 60 * 60 * 1000,
    }

    sendPostRequest('/setCookie', locCookie);

    // document.cookie = 'location=' + JSON.stringify(location) + '; expires=' + new Date(Date.now() + 24 * 60 * 60 * 1000).toUTCString();

    const reverseGeocodingUrl = `https://nominatim.openstreetmap.org/reverse?format=json&lat=${latitude}&lon=${longitude}`;

    document.getElementById('loading-container').style.display = 'flex';

    fetch(reverseGeocodingUrl)
        .then(response => response.json())
        .then(data => {
            const countryName = data.address.country;

            const currencyMapping = {
                'Afghanistan': 'AFN',
                'Albania': 'ALL',
                'Algeria': 'DZD',
                'American Samoa': 'USD',
                'Andorra': 'EUR',
                'Angola': 'AOA',
                'Anguilla': 'XCD',
                'Antarctica': 'XCD',
                'Antigua and Barbuda': 'XCD',
                'Argentina': 'ARS',
                'Armenia': 'AMD',
                'Aruba': 'AWG',
                'Australia': 'AUD',
                'Austria': 'EUR',
                'Azerbaijan': 'AZN',
                'Bahamas': 'BSD',
                'Bahrain': 'BHD',
                'Bangladesh': 'BDT',
                'Barbados': 'BBD',
                'Belarus': 'BYR',
                'Belgium': 'EUR',
                'Belize': 'BZD',
                'Benin': 'XOF',
                'Bermuda': 'BMD',
                'Bhutan': 'BTN',
                'Bolivia': 'BOB',
                'Bosnia and Herzegovina': 'BAM',
                'Botswana': 'BWP',
                'Bouvet Island': 'NOK',
                'Brazil': 'BRL',
                'British Indian Ocean Territory': 'USD',
                'Brunei': 'BND',
                'Bulgaria': 'BGN',
                'Burkina Faso': 'XOF',
                'Burundi': 'BIF',
                'Cambodia': 'KHR',
                'Cameroon': 'XAF',
                'Canada': 'CAD',
                'Cape Verde': 'CVE',
                'Cayman Islands': 'KYD',
                'Central African Republic': 'XAF',
                'Chad': 'XAF',
                'Chile': 'CLP',
                'China': 'CNY',
                'Christmas Island': 'AUD',
                'Cocos (Keeling) Islands': 'AUD',
                'Colombia': 'COP',
                'Comoros': 'KMF',
                'Congo': 'XAF',
                'Cook Islands': 'NZD',
                'Costa Rica': 'CRC',
                'Croatia': 'HRK',
                'Cuba': 'CUP',
                'Cyprus': 'EUR',
                'Czech Republic': 'CZK',
                'Denmark': 'DKK',
                'Djibouti': 'DJF',
                'Dominica': 'XCD',
                'Dominican Republic': 'DOP',
                'East Timor': 'USD',
                'Ecuador': 'ECS',
                'Egypt': 'EGP',
                'El Salvador': 'SVC',
                'England': 'GBP',
                'Equatorial Guinea': 'XAF',
                'Eritrea': 'ERN',
                'Estonia': 'EUR',
                'Ethiopia': 'ETB',
                'Falkland Islands': 'FKP',
                'Faroe Islands': 'DKK',
                'Fiji Islands': 'FJD',
                'Finland': 'EUR',
                'France': 'EUR',
                'French Guiana': 'EUR',
                'French Polynesia': 'XPF',
                'French Southern territories': 'EUR',
                'Gabon': 'XAF',
                'Gambia': 'GMD',
                'Georgia': 'GEL',
                'Germany': 'EUR',
                'Ghana': 'GHS',
                'Gibraltar': 'GIP',
                'Greece': 'EUR',
                'Greenland': 'DKK',
                'Grenada': 'XCD',
                'Guadeloupe': 'EUR',
                'Guam': 'USD',
                'Guatemala': 'QTQ',
                'Guinea': 'GNF',
                'Guinea-Bissau': 'CFA',
                'Guyana': 'GYD',
                'Haiti': 'HTG',
                'Heard Island and McDonald Islands': 'AUD',
                'Holy See (Vatican City State)': 'EUR',
                'Honduras': 'HNL',
                'Hong Kong': 'HKD',
                'Hungary': 'HUF',
                'Iceland': 'ISK',
                'India': 'INR',
                'Indonesia': 'IDR',
                'Iran': 'IRR',
                'Iraq': 'IQD',
                'Ireland': 'EUR',
                'Israel': 'ILS',
                'Italy': 'EUR',
                'Ivory Coast': 'XOF',
                'Jamaica': 'JMD',
                'Japan': 'JPY',
                'Jordan': 'JOD',
                'Kazakhstan': 'KZT',
                'Kenya': 'KES',
                'Kiribati': 'AUD',
                'Kuwait': 'KWD',
                'Kyrgyzstan': 'KGS',
                'Laos': 'LAK',
                'Latvia': 'LVL',
                'Lebanon': 'LBP',
                'Lesotho': 'LSL',
                'Liberia': 'LRD',
                'Libyan Arab Jamahiriya': 'LYD',
                'Liechtenstein': 'CHF',
                'Lithuania': 'LTL',
                'Luxembourg': 'EUR',
                'Macau': 'MOP',
                'North Macedonia': 'MKD',
                'Madagascar': 'MGF',
                'Malawi': 'MWK',
                'Malaysia': 'MYR',
                'Maldives': 'MVR',
                'Mali': 'XOF',
                'Malta': 'EUR',
                'Marshall Islands': 'USD',
                'Martinique': 'EUR',
                'Mauritania': 'MRO',
                'Mauritius': 'MUR',
                'Mayotte': 'EUR',
                'Mexico': 'MXN',
                'Micronesia: Federated States of': 'USD',
                'Moldova': 'MDL',
                'Monaco': 'EUR',
                'Mongolia': 'MNT',
                'Montserrat': 'XCD',
                'Morocco': 'MAD',
                'Mozambique': 'MZN',
                'Myanmar': 'MMR',
                'Namibia': 'NAD',
                'Nauru': 'AUD',
                'Nepal': 'NPR',
                'Netherlands': 'EUR',
                'Netherlands Antilles': 'ANG',
                'New Caledonia': 'XPF',
                'New Zealand': 'NZD',
                'Nicaragua': 'NIO',
                'Niger': 'XOF',
                'Nigeria': 'NGN',
                'Niue': 'NZD',
                'Norfolk Island': 'AUD',
                'North Korea': 'KPW',
                'Northern Ireland': 'GBP',
                'Northern Mariana Islands': 'USD',
                'Norway': 'NOK',
                'Oman': 'OMR',
                'Pakistan': 'PKR',
                'Palau': 'USD' ,
                'Panama': 'PAB',
                'Papua New Guinea': 'PGK',
                'Paraguay': 'PYG',
                'Peru': 'PEN',
                'Philippines': 'PHP',
                'Pitcairn Islands': 'NZD',
                'Poland': 'PLN',
                'Portugal': 'EUR',
                'Puerto Rico': 'USD',
                'Qatar': 'QAR',
                'Reunion': 'EUR',
                'Romania': 'RON',
                'Russian Federation': 'RUB',
                'Rwanda': 'RWF',
                'Saint Helena': 'SHP',
                'Saint Kitts and Nevis': 'XCD',
                'Saint Lucia': 'XCD',
                'Saint Pierre and Miquelon': 'EUR',
                'Saint Vincent and the Grenadines': 'XCD',
                'Samoa': 'WST',
                'San Marino': 'EUR',
                'Sao Tome and Principe': 'STD',
                'Saudi Arabia': 'SAR',
                'Scotland': 'GBP',
                'Senegal': 'XOF',
                'Serbia': 'RSD',
                'Seychelles': 'SCR',
                'Sierra Leone': 'SLL',
                'Singapore': 'SGD',
                'Slovakia': 'EUR',
                'Slovenia': 'EUR',
                'Solomon Islands': 'SBD',
                'Somalia': 'SOS',
                'South Africa': 'ZAR',
                'South Georgia and the South Sandwich Islands': 'GBP',
                'South Korea': 'KRW',
                'South Sudan': 'SSP',
                'Spain': 'EUR',
                'Sri Lanka': 'LKR',
                'Sudan': 'SDG',
                'Suriname': 'SRD',
                'Svalbard and Jan Mayen': 'NOK',
                'Swaziland': 'SZL',
                'Sweden': 'SEK',
                'Switzerland': 'CHF',
                'Syria': 'SYP',
                'Tajikistan': 'TJS',
                'Tanzania': 'TZS',
                'Thailand': 'THB',
                'The Democratic Republic of Congo': 'CDF',
                'Togo': 'XOF',
                'Tokelau': 'NZD',
                'Tonga': 'TOP',
                'Trinidad and Tobago': 'TTD',
                'Tunisia': 'TND',
                'Turkey': 'TRY',
                'Turkmenistan': 'TMT',
                'Turks and Caicos Islands': 'USD',
                'Tuvalu': 'AUD',
                'Uganda': 'UGX',
                'Ukraine': 'UAH',
                'United Arab Emirates': 'AED',
                'United Kingdom': 'GBP',
                'United States': 'USD',
                'United States Minor Outlying Islands': 'USD',
                'Uruguay': 'UYU',
                'Uzbekistan': 'UZS',
                'Vanuatu': 'VUV',
                'Venezuela': 'VEF',
                'Vietnam': 'VND',
                'Virgin Islands: British': 'USD',
                'Virgin Islands: U.S.': 'USD',
                'Wales': 'GBP',
                'Wallis and Futuna': 'XPF',
                'Western Sahara': 'MAD',
                'Yemen': 'YER',
                'Zambia': 'ZMW',
                'Zimbabwe': 'ZW',
            };

            const countryCodeList = {
              "Afghanistan": "AF",
              "Aland Islands": "AX",
              "Albania": "AL",
              "Algeria": "DZ",
              "AmericanSamoa": "AS",
              "Andorra": "AD",
              "Angola": "AO",
              "Anguilla": "AI",
              "Antarctica": "AQ",
              "Antigua and Barbuda": "AG",
              "Argentina": "AR",
              "Armenia": "AM",
              "Aruba": "AW",
              "Australia": "AU",
              "Austria": "AT",
              "Azerbaijan": "AZ",
              "Bahamas": "BS",
              "Bahrain": "BH",
              "Bangladesh": "BD",
              "Barbados": "BB",
              "Belarus": "BY",
              "Belgium": "BE",
              "Belize": "BZ",
              "Benin": "BJ",
              "Bermuda": "BM",
              "Bhutan": "BT",
              "Bolivia, Plurinational State of": "BO",
              "Bosnia and Herzegovina": "BA",
              "Botswana": "BW",
              "Brazil": "BR",
              "British Indian Ocean Territory": "IO",
              "Brunei Darussalam": "BN",
              "Bulgaria": "BG",
              "Burkina Faso": "BF",
              "Burundi": "BI",
              "Cambodia": "KH",
              "Cameroon": "CM",
              "Canada": "CA",
              "Cape Verde": "CV",
              "Cayman Islands": "KY",
              "Central African Republic": "CF",
              "Chad": "TD",
              "Chile": "CL",
              "China": "CN",
              "Christmas Island": "CX",
              "Cocos (Keeling) Islands": "CC",
              "Colombia": "CO",
              "Comoros": "KM",
              "Congo": "CG",
              "Congo, The Democratic Republic of the Congo": "CD",
              "Cook Islands": "CK",
              "Costa Rica": "CR",
              "Cote d'Ivoire": "CI",
              "Croatia": "HR",
              "Cuba": "CU",
              "Cyprus": "CY",
              "Czech Republic": "CZ",
              "Denmark": "DK",
              "Djibouti": "DJ",
              "Dominica": "DM",
              "Dominican Republic": "DO",
              "Ecuador": "EC",
              "Egypt": "EG",
              "El Salvador": "SV",
              "Equatorial Guinea": "GQ",
              "Eritrea": "ER",
              "Estonia": "EE",
              "Ethiopia": "ET",
              "Falkland Islands (Malvinas)": "FK",
              "Faroe Islands": "FO",
              "Fiji": "FJ",
              "Finland": "FI",
              "France": "FR",
              "French Guiana": "GF",
              "French Polynesia": "PF",
              "Gabon": "GA",
              "Gambia": "GM",
              "Georgia": "GE",
              "Germany": "DE",
              "Ghana": "GH",
              "Gibraltar": "GI",
              "Greece": "GR",
              "Greenland": "GL",
              "Grenada": "GD",
              "Guadeloupe": "GP",
              "Guam": "GU",
              "Guatemala": "GT",
              "Guernsey": "GG",
              "Guinea": "GN",
              "Guinea-Bissau": "GW",
              "Guyana": "GY",
              "Haiti": "HT",
              "Holy See": "VA",
              "Honduras": "HN",
              "Hong Kong": "HK",
              "Hungary": "HU",
              "Iceland": "IS",
              "India": "IN",
              "Indonesia": "ID",
              "Iran": "IR",
              "Iraq": "IQ",
              "Ireland": "IE",
              "Isle of Man": "IM",
              "Israel": "IL",
              "Italy": "IT",
              "Jamaica": "JM",
              "Japan": "JP",
              "Jersey": "JE",
              "Jordan": "JO",
              "Kazakhstan": "KZ",
              "Kenya": "KE",
              "Kiribati": "KI",
              "North Korea": "KP",
              "South Korea": "KR",
              "Kuwait": "KW",
              "Kyrgyzstan": "KG",
              "Laos": "LA",
              "Latvia": "LV",
              "Lebanon": "LB",
              "Lesotho": "LS",
              "Liberia": "LR",
              "Libyan Arab Jamahiriya": "LY",
              "Liechtenstein": "LI",
              "Lithuania": "LT",
              "Luxembourg": "LU",
              "Macao": "MO",
              "Macedonia": "MK",
              "Madagascar": "MG",
              "Malawi": "MW",
              "Malaysia": "MY",
              "Maldives": "MV",
              "Mali": "ML",
              "Malta": "MT",
              "Marshall Islands": "MH",
              "Martinique": "MQ",
              "Mauritania": "MR",
              "Mauritius": "MU",
              "Mayotte": "YT",
              "Mexico": "MX",
              "Micronesia": "FM",
              "Moldova": "MD",
              "Monaco": "MC",
              "Mongolia": "MN",
              "Montenegro": "ME",
              "Montserrat": "MS",
              "Morocco": "MA",
              "Mozambique": "MZ",
              "Myanmar": "MM",
              "Namibia": "NA",
              "Nauru": "NR",
              "Nepal": "NP",
              "Netherlands": "NL",
              "Netherlands Antilles": "AN",
              "New Caledonia": "NC",
              "New Zealand": "NZ",
              "Nicaragua": "NI",
              "Niger": "NE",
              "Nigeria": "NG",
              "Niue": "NU",
              "Norfolk Island": "NF",
              "Northern Mariana Islands": "MP",
              "Norway": "NO",
              "Oman": "OM",
              "Pakistan": "PK",
              "Palau": "PW",
              "Palestinian": "PS",
              "Panama": "PA",
              "Papua New Guinea": "PG",
              "Paraguay": "PY",
              "Peru": "PE",
              "Philippines": "PH",
              "Pitcairn": "PN",
              "Poland": "PL",
              "Portugal": "PT",
              "Puerto Rico": "PR",
              "Qatar": "QA",
              "Romania": "RO",
              "Russia": "RU",
              "Rwanda": "RW",
              "Reunion": "RE",
              "Saint Barthelemy": "BL",
              "Saint Helena": "SH",
              "Saint Kitts and Nevis": "KN",
              "Saint Lucia": "LC",
              "Saint Martin": "MF",
              "Saint Pierre and Miquelon": "PM",
              "Saint Vincent and the Grenadines": "VC",
              "Samoa": "WS",
              "San Marino": "SM",
              "Sao Tome and Principe": "ST",
              "Saudi Arabia": "SA",
              "Senegal": "SN",
              "Serbia": "RS",
              "Seychelles": "SC",
              "Sierra Leone": "SL",
              "Singapore": "SG",
              "Slovakia": "SK",
              "Slovenia": "SI",
              "Solomon Islands": "SB",
              "Somalia": "SO",
              "South Africa": "ZA",
              "South Sudan": "SS",
              "South Georgia and the South Sandwich Islands": "GS",
              "Spain": "ES",
              "Sri Lanka": "LK",
              "Sudan": "SD",
              "Suriname": "SR",
              "Svalbard and Jan Mayen": "SJ",
              "Swaziland": "SZ",
              "Sweden": "SE",
              "Switzerland": "CH",
              "Syrian Arab Republic": "SY",
              "Taiwan": "TW",
              "Tajikistan": "TJ",
              "Tanzania, United Republic of Tanzania": "TZ",
              "Thailand": "TH",
              "Timor-Leste": "TL",
              "Togo": "TG",
              "Tokelau": "TK",
              "Tonga": "TO",
              "Trinidad and Tobago": "TT",
              "Tunisia": "TN",
              "Turkey": "TR",
              "Turkmenistan": "TM",
              "Turks and Caicos Islands": "TC",
              "Tuvalu": "TV",
              "Uganda": "UG",
              "Ukraine": "UA",
              "United Arab Emirates": "AE",
              "United Kingdom": "GB",
              "United States": "US",
              "Uruguay": "UY",
              "Uzbekistan": "UZ",
              "Vanuatu": "VU",
              "Venezuela": "VE",
              "Vietnam": "VN",
              "Virgin Islands, British": "VG",
              "Virgin Islands, U.S.": "VI",
              "Wallis and Futuna": "WF",
              "Yemen": "YE",
              "Zambia": "ZM",
              "Zimbabwe": "ZW",
            }
            const currencyCode = currencyMapping[countryName];
            const currencySymbolMapping = {
                'BDT': '৳',
                'USD': '$',
            };

            const currencySymbol = currencySymbolMapping[currencyCode];
            const countryCode = countryCodeList[countryName];

        // Post res data send
            const currSymb = {
              name: 'currencySymbol',
              data: currencySymbol,
              expire: 24 * 60 * 60 * 1000,
            }

            const currCode = {
              name: 'currencyCode',
              data: currencyCode,
              expire: 24 * 60 * 60 * 1000,
            }

            const countCode = {
              name: 'countryCode',
              data: countryCode,
              expire: 24 * 60 * 60 * 1000,
            }


            sendPostRequest('/setCookie', currSymb);
            sendPostRequest('/setCookie', currCode);
            sendPostRequest('/setCookie', countCode);

            // document.cookie = 'currencySymbol=' + currencySymbol + '; expires=' + new Date(Date.now() + 24 * 60 * 60 * 1000).toUTCString();
            // document.cookie = 'currencyCode=' + currencyCode + '; expires=' + new Date(Date.now() + 24 * 60 * 60 * 1000).toUTCString();
            // document.cookie = 'countryCode=' + countryCode + '; expires=' + new Date(Date.now() + 24 * 60 * 60 * 1000).toUTCString();
            document.getElementById('loading-container').style.display = 'none';
            window.location.reload();
        })
        .catch(error => {
            document.getElementById('loading-container').style.display = 'none';
            console.error('Error getting currency symbol:', error);
        });
}
function showError(error) {
    document.getElementById('loading-container').style.display = 'none';
    if (error.code === error.PERMISSION_DENIED) {
        alert('Location access was denied. Please allow location to access AREA SHOP and try again.');
        getLocation();
    } else {
        alert('Error getting location: ' + error.message);
    }
}

async function getCookie() {
  try {
    const apiUrl = `/d_cookies`;
    const { latitude, longitude } = await getDecLoc(apiUrl);
    if (latitude && longitude) {
      return { latitude, longitude };
    } else {
      return null;
    }
  } catch (error) {
    console.error('Error:', error);
  }
}

window.onload = function () {
    getLocation();
}