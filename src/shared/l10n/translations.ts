import en from "./locales/en.json";
import es from "./locales/es.json";
import pt from "./locales/pt.json";

type TranslationKeys = "en" | "es" | "pt";

type TranslationStrings = {
  home: string;
  language: string;
  english: string;
  spanish: string;
  portuguese: string;
  welcome_message: string;
  about_us: string;
  contact_us: string;
  esim_store: string;
  my_esims: string;
  profile: string;
  buy_esims: string;
  hero_title: string;
  hero_title_bold: string;
  hero_subtitle: string;
  get_started: string;
  welcome_title: string;
  welcome_description: string;
  discover: string;
  plan_type: string;
  data_allowance: string;
  validity: string;
  price: string;
  country: string;
  global: string;
  regional: string;
  up_to: string;
  gb: string;
  days: string;
  postpaid: string;
  unlimited: string;
  prepaid: string;
  usd: string;
  less_than: string;
  buy_esim_title: string;
  buy_esim: string;
  activate_abroad: string;
  download_app_title: string;
  download_app_subtitle: string;
  experience_title: string;
  experience_description: string;
  newsletter_title: string;
  newsletter_subtitle: string;
  email: string;
  footer_description: string;
  sky_esim_links: string;
  download_our_app: string;
  sky_esim_instagram: string;
  copyright: string;
  onboarding1_title: string;
  onboarding1_description: string;
  onboarding2_title: string;
  onboarding2_description: string;
  onboarding3_title: string;
  onboarding3_description: string;
  about_title: string;
  about_subtitle: string;
  our_mission: string;
  mission_description: string;
  our_values: string;
  reliable_connectivity: string;
  reliable_connectivity_desc: string;
  customer_first: string;
  customer_first_desc: string;
  innovation: string;
  innovation_desc: string;
  our_team: string;
  ceo_and_cto: string;
  senior_software_engineer: string;
  support_manager: string;
  contact_title: string;
  contact_subtitle: string;
  get_in_touch: string;
  address: string;
  address_value: string;
  phone: string;
  phone_value: string;
  email_value: string;
  working_hours: string;
  working_hours_value: string;
  send_message: string;
  name: string;
  your_name: string;
  your_email: string;
  subject: string;
  message: string;
  your_message: string;
};

const translations: Record<TranslationKeys, TranslationStrings> = {
  en,
  es,
  pt,
};

export function getTranslations(locale: string): TranslationStrings {
  return translations[locale as TranslationKeys] || translations.en;
}
