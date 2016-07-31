//
//  Locale.swift
//  iOS9to10
//
//  Created by 林達也 on 2016/07/31.
//  Copyright © 2016年 jp.sora0077. All rights reserved.
//

import Foundation


extension Locale {

    final public class Compatible {

        private static var key: UInt8 = 0

        private unowned var locale: Locale

        public func localizedString(forLocaleIdentifier localeIdentifier: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forLocaleIdentifier: localeIdentifier)
            }
            return locale.displayName(forKey: Locale.Key.identifier, value: localeIdentifier) ?? ""
        }

        public var languageCode: String {
            if #available(iOS 10, *) {
                return locale.languageCode
            }
            return locale.object(forKey: Locale.Key.languageCode) as? String ?? ""
        }

        public func localizedString(forLanguageCode languageCode: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forLanguageCode: languageCode)
            }
            return locale.displayName(forKey: Locale.Key.languageCode, value: languageCode) ?? ""
        }

        public var countryCode: String {
            if #available(iOS 10, *) {
                return locale.countryCode
            }
            return locale.object(forKey: Locale.Key.countryCode) as? String ?? ""
        }

        public func localizedString(forCountryCode countryCode: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forCountryCode: countryCode)
            }
            return locale.displayName(forKey: Locale.Key.countryCode, value: countryCode) ?? ""
        }

        public var scriptCode: String {
            if #available(iOS 10, *) {
                return locale.scriptCode
            }
            return locale.object(forKey: Locale.Key.scriptCode) as? String ?? ""
        }

        public func localizedString(forScriptCode scriptCode: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forScriptCode: scriptCode)
            }
            return locale.displayName(forKey: Locale.Key.scriptCode, value: scriptCode) ?? ""
        }

        public var variantCode: String {
            if #available(iOS 10, *) {
                return locale.variantCode
            }
            return locale.object(forKey: Locale.Key.variantCode) as? String ?? ""
        }

        public func localizedString(forVariantCode variantCode: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forVariantCode: variantCode)
            }
            return locale.displayName(forKey: Locale.Key.variantCode, value: variantCode) ?? ""
        }

        public var exemplarCharacterSet: CharacterSet {
            if #available(iOS 10, *) {
                return locale.exemplarCharacterSet
            }
            return locale.object(forKey: Locale.Key.exemplarCharacterSet)
                as? CharacterSet ?? CharacterSet()
        }

        public var calendar: Calendar {
            if #available(iOS 10, *) {
                return locale.calendar
            }
            return locale.object(forKey: Locale.Key.calendar) as? Calendar ?? Calendar.current
        }

        public func localizedString(for calendar: Calendar) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(for: calendar)
            }
            return locale.displayName(forKey: Locale.Key.calendar, value: calendar) ?? ""
        }

        public var collationIdentifier: String {
            if #available(iOS 10, *) {
                return locale.collatorIdentifier
            }
            return locale.object(forKey: Locale.Key.collatorIdentifier) as? String ?? ""
        }

        public func localizedString(forCollationIdentifier collationIdentifier: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forCollationIdentifier: collationIdentifier)
            }
            return locale.displayName(forKey: Locale.Key.collationIdentifier,
                                      value: collationIdentifier) ?? ""
        }

        public var usesMetricSystem: Bool {
            if #available(iOS 10, *) {
                return locale.usesMetricSystem
            }
            return locale.object(forKey: Locale.Key.usesMetricSystem) as? Bool ?? false
        }

        public var decimalSeparator: String {
            if #available(iOS 10, *) {
                return locale.decimalSeparator
            }
            return locale.object(forKey: Locale.Key.decimalSeparator) as? String ?? ""
        }

        public func localizedString(forDecimalSeparator decimalSeparator: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forDecimalSeparator: decimalSeparator)
            }
            return locale.displayName(forKey: Locale.Key.decimalSeparator,
                                      value: decimalSeparator) ?? ""
        }

        public var groupingSeparator: String {
            if #available(iOS 10, *) {
                return locale.groupingSeparator
            }
            return locale.object(forKey: Locale.Key.groupingSeparator) as? String ?? ""
        }

        public func localizedString(forGroupingSeparator groupingSeparator: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forGroupingSeparator: groupingSeparator)
            }
            return locale.displayName(forKey: Locale.Key.groupingSeparator,
                                      value: groupingSeparator) ?? ""
        }

        public var currencySymbol: String {
            if #available(iOS 10, *) {
                return locale.currencySymbol
            }
            return locale.object(forKey: Locale.Key.currencySymbol) as? String ?? ""
        }

        public func localizedString(forCurrencySymbol currencySymbol: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forCurrencySymbol: currencySymbol)
            }
            return locale.displayName(forKey: Locale.Key.currencySymbol,
                                      value: currencySymbol) ?? ""
        }

        public var currencyCode: String {
            if #available(iOS 10, *) {
                return locale.currencyCode
            }
            return locale.object(forKey: Locale.Key.currencyCode) as? String ?? ""
        }

        public func localizedString(forCurrencyCode currencyCode: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forCurrencyCode: currencyCode)
            }
            return locale.displayName(forKey: Locale.Key.currencyCode, value: currencyCode) ?? ""
        }

        public var collatorIdentifier: String {
            if #available(iOS 10, *) {
                return locale.collatorIdentifier
            }
            return locale.object(forKey: Locale.Key.collatorIdentifier) as? String ?? ""
        }

        public func localizedString(forCollatorIdentifier collatorIdentifier: String) -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forCollatorIdentifier: collatorIdentifier)
            }
            return locale.displayName(forKey: Locale.Key.collatorIdentifier,
                                      value: collatorIdentifier) ?? ""
        }

        public var quotationBeginDelimiter: String {
            if #available(iOS 10, *) {
                return locale.quotationBeginDelimiter
            }
            return locale.object(forKey: Locale.Key.quotationBeginDelimiterKey) as? String ?? ""
        }

        public func localizedString(forQuotationBeginDelimiter quotationBeginDelimiter: String)
            -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forQuotationBeginDelimiter: quotationBeginDelimiter)
            }
            return locale.displayName(forKey: Locale.Key.quotationBeginDelimiterKey,
                                      value: quotationBeginDelimiter) ?? ""
        }

        public var quotationEndDelimiter: String {
            if #available(iOS 10, *) {
                return locale.quotationEndDelimiter
            }
            return locale.object(forKey: Locale.Key.quotationEndDelimiterKey) as? String ?? ""
        }

        public func localizedString(forQuotationEndDelimiter quotationEndDelimiter: String)
            -> String {
            if #available(iOS 10, *) {
                return locale.localizedString(forQuotationEndDelimiter: quotationEndDelimiter)
            }
            return locale.displayName(forKey: Locale.Key.quotationEndDelimiterKey,
                                      value: quotationEndDelimiter) ?? ""
        }

        public var alternateQuotationBeginDelimiter: String {
            if #available(iOS 10, *) {
                return locale.alternateQuotationBeginDelimiter
            }
            return locale.object(forKey: Locale.Key.alternateQuotationBeginDelimiterKey)
                as? String ?? ""
        }

        public func localizedString(
            forAlternateQuotationBeginDelimiter alternateQuotationBeginDelimiter: String)
            -> String {
                if #available(iOS 10, *) {
                    return locale.localizedString(
                        forAlternateQuotationBeginDelimiter: alternateQuotationBeginDelimiter)
                }
                return locale.displayName(forKey: Locale.Key.alternateQuotationBeginDelimiterKey,
                                          value: alternateQuotationBeginDelimiter) ?? ""
        }

        public var alternateQuotationEndDelimiter: String {
            if #available(iOS 10, *) {
                return locale.alternateQuotationEndDelimiter
            }
            return locale.object(forKey: Locale.Key.alternateQuotationEndDelimiterKey)
                as? String ?? ""
        }

        public func localizedString(
            forAlternateQuotationEndDelimiter alternateQuotationEndDelimiter: String) -> String {
                if #available(iOS 10, *) {
                    return locale.localizedString(
                        forAlternateQuotationEndDelimiter: alternateQuotationEndDelimiter)
                }
                return locale.displayName(forKey: Locale.Key.alternateQuotationEndDelimiterKey,
                                          value: alternateQuotationEndDelimiter) ?? ""
        }

        private init(locale: Locale) {
            self.locale = locale
        }
    }

    public var compatible: Compatible {
        if let obj = objc_getAssociatedObject(self, &Compatible.key) as? Compatible {
            return obj
        }
        let compatible = Compatible(locale: self)
        objc_setAssociatedObject(
            self,
            &Compatible.key,
            compatible,
            .OBJC_ASSOCIATION_RETAIN_NONATOMIC
        )
        return compatible
    }

}
