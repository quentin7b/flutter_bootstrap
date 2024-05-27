/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 40 (20 per locale)
///
/// Built on 2024-05-27 at 19:36 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	fr(languageCode: 'fr', build: _StringsFr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appName => 'Flutter Bootstrap';
	late final _StringsErrorsEn errors = _StringsErrorsEn._(_root);
	late final _StringsSubscriptionsEn subscriptions = _StringsSubscriptionsEn._(_root);
}

// Path: errors
class _StringsErrorsEn {
	_StringsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsErrorsEmailEn email = _StringsErrorsEmailEn._(_root);
	late final _StringsErrorsPasswordEn password = _StringsErrorsPasswordEn._(_root);
}

// Path: subscriptions
class _StringsSubscriptionsEn {
	_StringsSubscriptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsSubscriptionsDurationEn duration = _StringsSubscriptionsDurationEn._(_root);
	late final _StringsSubscriptionsPeriodunitEn periodunit = _StringsSubscriptionsPeriodunitEn._(_root);
}

// Path: errors.email
class _StringsErrorsEmailEn {
	_StringsErrorsEmailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'We need your email address';
	String get invalid => 'It looks like your email address is not valid';
}

// Path: errors.password
class _StringsErrorsPasswordEn {
	_StringsErrorsPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'We need your password';
	String get invalid => 'Your password must be at least 6 characters long';
}

// Path: subscriptions.duration
class _StringsSubscriptionsDurationEn {
	_StringsSubscriptionsDurationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lifetime => 'Lifetime';
	String get annual => 'Every year';
	String get sixMonth => 'Every 6 months';
	String get threeMonth => 'Every 3 months';
	String get twoMonth => 'Every 2 months';
	String get monthly => 'Every month';
	String get weekly => 'Every week';
}

// Path: subscriptions.periodunit
class _StringsSubscriptionsPeriodunitEn {
	_StringsSubscriptionsPeriodunitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Day',
		other: 'Days',
	);
	String week({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Week',
		other: 'Weeks',
	);
	String month({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Month',
		other: 'Months',
	);
	String year({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Year',
		other: 'Years',
	);
}

// Path: <root>
class _StringsFr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsFr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsFr _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'Flutter Bootstrap';
	@override late final _StringsErrorsFr errors = _StringsErrorsFr._(_root);
	@override late final _StringsSubscriptionsFr subscriptions = _StringsSubscriptionsFr._(_root);
}

// Path: errors
class _StringsErrorsFr implements _StringsErrorsEn {
	_StringsErrorsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override late final _StringsErrorsEmailFr email = _StringsErrorsEmailFr._(_root);
	@override late final _StringsErrorsPasswordFr password = _StringsErrorsPasswordFr._(_root);
}

// Path: subscriptions
class _StringsSubscriptionsFr implements _StringsSubscriptionsEn {
	_StringsSubscriptionsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override late final _StringsSubscriptionsDurationFr duration = _StringsSubscriptionsDurationFr._(_root);
	@override late final _StringsSubscriptionsPeriodunitFr periodunit = _StringsSubscriptionsPeriodunitFr._(_root);
}

// Path: errors.email
class _StringsErrorsEmailFr implements _StringsErrorsEmailEn {
	_StringsErrorsEmailFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Nous avons besoin de votre adresse email';
	@override String get invalid => 'Il semblerait que votre adresse email ne soit pas valide';
}

// Path: errors.password
class _StringsErrorsPasswordFr implements _StringsErrorsPasswordEn {
	_StringsErrorsPasswordFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Nous avons besoin de votre mot de passe';
	@override String get invalid => 'Votre mot de passe doit contenir au moins 6 caractères';
}

// Path: subscriptions.duration
class _StringsSubscriptionsDurationFr implements _StringsSubscriptionsDurationEn {
	_StringsSubscriptionsDurationFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get lifetime => 'A vie';
	@override String get annual => 'Tous les year';
	@override String get sixMonth => 'Tous les 6 mois';
	@override String get threeMonth => 'Tous les 3 mois';
	@override String get twoMonth => 'Tous les 2 mois';
	@override String get monthly => 'Tous les mois';
	@override String get weekly => 'Toutes les semaines';
}

// Path: subscriptions.periodunit
class _StringsSubscriptionsPeriodunitFr implements _StringsSubscriptionsPeriodunitEn {
	_StringsSubscriptionsPeriodunitFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Jour',
		other: 'Jours',
	);
	@override String week({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Semaine',
		other: 'Semaines',
	);
	@override String month({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Mois',
		other: 'Mois',
	);
	@override String year({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'An',
		other: 'Ans',
	);
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Flutter Bootstrap';
			case 'errors.email.empty': return 'We need your email address';
			case 'errors.email.invalid': return 'It looks like your email address is not valid';
			case 'errors.password.empty': return 'We need your password';
			case 'errors.password.invalid': return 'Your password must be at least 6 characters long';
			case 'subscriptions.duration.lifetime': return 'Lifetime';
			case 'subscriptions.duration.annual': return 'Every year';
			case 'subscriptions.duration.sixMonth': return 'Every 6 months';
			case 'subscriptions.duration.threeMonth': return 'Every 3 months';
			case 'subscriptions.duration.twoMonth': return 'Every 2 months';
			case 'subscriptions.duration.monthly': return 'Every month';
			case 'subscriptions.duration.weekly': return 'Every week';
			case 'subscriptions.periodunit.day': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Day',
				other: 'Days',
			);
			case 'subscriptions.periodunit.week': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Week',
				other: 'Weeks',
			);
			case 'subscriptions.periodunit.month': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Month',
				other: 'Months',
			);
			case 'subscriptions.periodunit.year': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Year',
				other: 'Years',
			);
			default: return null;
		}
	}
}

extension on _StringsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Flutter Bootstrap';
			case 'errors.email.empty': return 'Nous avons besoin de votre adresse email';
			case 'errors.email.invalid': return 'Il semblerait que votre adresse email ne soit pas valide';
			case 'errors.password.empty': return 'Nous avons besoin de votre mot de passe';
			case 'errors.password.invalid': return 'Votre mot de passe doit contenir au moins 6 caractères';
			case 'subscriptions.duration.lifetime': return 'A vie';
			case 'subscriptions.duration.annual': return 'Tous les year';
			case 'subscriptions.duration.sixMonth': return 'Tous les 6 mois';
			case 'subscriptions.duration.threeMonth': return 'Tous les 3 mois';
			case 'subscriptions.duration.twoMonth': return 'Tous les 2 mois';
			case 'subscriptions.duration.monthly': return 'Tous les mois';
			case 'subscriptions.duration.weekly': return 'Toutes les semaines';
			case 'subscriptions.periodunit.day': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'Jour',
				other: 'Jours',
			);
			case 'subscriptions.periodunit.week': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'Semaine',
				other: 'Semaines',
			);
			case 'subscriptions.periodunit.month': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'Mois',
				other: 'Mois',
			);
			case 'subscriptions.periodunit.year': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'An',
				other: 'Ans',
			);
			default: return null;
		}
	}
}
