//
//  MarketDataModel.swift
//  CryptoTrak
//
//  Created by Grant Watson on 5/11/22.
//

import Foundation

// JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 13437,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 804,
     "total_market_cap": {
       "btc": 45629772.12291477,
       "eth": 624600119.7700106,
       "ltc": 19155068147.47349,
       "bch": 6682551848.838986,
       "bnb": 4908237448.238131,
       "eos": 907893018124.8242,
       "xrp": 3175360796001.187,
       "xlm": 10667865959282.041,
       "link": 185068562268.08258,
       "dot": 146964470078.20758,
       "yfi": 107829691.30839106,
       "usd": 1400823877900.133,
       "aed": 5145366185915.006,
       "ars": 164016964026310.5,
       "aud": 2011077391244.6704,
       "bdt": 121414550723708.25,
       "bhd": 528071378899.7692,
       "bmd": 1400823877900.133,
       "brl": 7161712075764.424,
       "cad": 1816194773351.206,
       "chf": 1388570871440.1426,
       "clp": 1206459564841493,
       "cny": 9415357530530.19,
       "czk": 33686662409772.98,
       "dkk": 9893731880713.693,
       "eur": 1330152313260.0715,
       "gbp": 1138721325401.751,
       "hkd": 10996537482709.963,
       "huf": 504721082100473.94,
       "idr": 20355134274086584,
       "ils": 4811479814617.501,
       "inr": 108270431166147.89,
       "jpy": 182270066633477.22,
       "krw": 1785034866622729.8,
       "kwd": 429897439064.89435,
       "lkr": 503980954002937.7,
       "mmk": 2592092463147683,
       "mxn": 28393086255928.39,
       "myr": 6130705701629.928,
       "ngn": 580403357330365,
       "nok": 13608239123962.473,
       "nzd": 2217627471217.1675,
       "php": 72920588776854.34,
       "pkr": 264475548147545.53,
       "pln": 6211697135778.502,
       "rub": 93154797686126.11,
       "sar": 5254892402456.38,
       "sek": 14062202717249.709,
       "sgd": 1944597091647.2876,
       "thb": 48462902879832.85,
       "try": 21446753653038.87,
       "twd": 41643692242215.23,
       "uah": 42349214386671.87,
       "vef": 140264494894.1406,
       "vnd": 32134899759029090,
       "zar": 22548816818379.855,
       "xdr": 1023327057635.8495,
       "xag": 64756277634.37551,
       "xau": 756500927.0211886,
       "bits": 45629772122914.766,
       "sats": 4562977212291477
     },
     "total_volume": {
       "btc": 7588920.611450995,
       "eth": 103880438.19436473,
       "ltc": 3185777283.4484234,
       "bch": 1111409351.9059336,
       "bnb": 816314055.57961,
       "eos": 150996328004.44965,
       "xrp": 528110482968.3188,
       "xlm": 1774227310198.1135,
       "link": 30779698459.69369,
       "dot": 24442412140.98438,
       "yfi": 17933707.06941796,
       "usd": 232978178619.27017,
       "aed": 855752147886.4458,
       "ars": 27278499563266.582,
       "aud": 334472559374.79065,
       "bdt": 20193074469782.246,
       "bhd": 87826249950.46356,
       "bmd": 232978178619.27017,
       "brl": 1191100938191.0178,
       "cad": 302060635165.27814,
       "chf": 230940318490.8878,
       "clp": 200652456335847,
       "cny": 1565916231953.7048,
       "czk": 5602600994891.563,
       "dkk": 1645477115061.2922,
       "eur": 221224429507.92804,
       "gbp": 189386563530.53305,
       "hkd": 1828890351070.2058,
       "huf": 83942742748491.8,
       "idr": 3385366414396213.5,
       "ils": 800221799012.5414,
       "inr": 18007008767743.54,
       "jpy": 30314266347841.285,
       "krw": 296878271821765.56,
       "kwd": 71498440258.28928,
       "lkr": 83819648261861.95,
       "mmk": 431104145499108.94,
       "mxn": 4722199289750.843,
       "myr": 1019628998727.2351,
       "ngn": 96529848747322.69,
       "nok": 2263255799200.686,
       "nzd": 368824958834.02344,
       "php": 12127795810093.611,
       "pkr": 43986280123318.28,
       "pln": 1033099098080.4692,
       "rub": 15493050509028.736,
       "sar": 873968012738.1501,
       "sek": 2338756804567.657,
       "sgd": 323415880973.8776,
       "thb": 8060113067512.246,
       "try": 3566919212478.8955,
       "twd": 6925975293993.676,
       "uah": 7043314287698.914,
       "vef": 23328105025.147568,
       "vnd": 5344519417526064,
       "zar": 3750208970053.141,
       "xdr": 170194753088.592,
       "xag": 10769947496.923058,
       "xau": 125817535.58155079,
       "bits": 7588920611450.995,
       "sats": 758892061145099.5
     },
     "market_cap_percentage": {
       "btc": 41.720745281653045,
       "eth": 19.394408115473833,
       "usdt": 5.879493419402554,
       "bnb": 3.4425065132023978,
       "usdc": 3.4287901006324617,
       "xrp": 1.5190737594772776,
       "ada": 1.3787102084961815,
       "sol": 1.331043552146604,
       "busd": 1.2118026827488735,
       "doge": 0.8391573733028216
     },
     "market_cap_change_percentage_24h_usd": -7.76142928995764,
     "updated_at": 1652286783
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
