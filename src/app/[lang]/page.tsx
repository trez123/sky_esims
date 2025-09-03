import { getTranslations, TranslationStrings } from "@/shared/l10n/translations";
import Image from "next/image";
import LanguageToggle from "../../shared/components/LanguageSelector";
import Navbar from "@/shared/components/NavBar";
import Footer from "@/shared/components/Footer";
import { JSX } from "react";

type Props = {
  params: Promise<{ lang: string }>;
};
const buildHeroSection = (t: TranslationStrings) =>{
    return (
      <div className="relative font-poppins mt-[100px]">
        <div className="bg-gradient-to-r from-[#008799] to-[#00E0FF]">
          <div className="container mx-auto px-8 pt-24 pb-48">
            <div className="flex flex-col md:flex-row items-start gap-8">
              <div className="flex-1 text-white">
                <h1 className="text-4xl md:text-5xl leading-15 mb-4">
                  {t.hero_title}
                  <span className="font-bold">{t.hero_title_bold}</span>
                </h1>
                <p className="text-lg mb-8 font-light max-w-xl mt-8">
                {t.hero_subtitle}
              </p>
              <a
                href="/esim_store"
                className="inline-block bg-white text-[#008799] px-8 py-4 rounded-full font-bold hover:bg-opacity-90 transition-all"
              >
                {t.get_started}
              </a>
              </div>
            <div className="flex-1">
              <img
                src="/dashboard/assets/assets/images/business-on-phone.svg"
                alt="Business on Phone"
                className="w-full"
              />
            </div>
            </div>
          </div>
        </div>
      <div className="w-full overflow-hidden absolute bottom-0">
        <img
          src="/dashboard/assets/assets/images/esim-wave.svg"
          alt="Wave"
          className="w-full scale-x-[1.01]"
        />
      </div>
      </div>
     );
  }

  const buildWelcomeSection = (t: TranslationStrings): JSX.Element => {
    return (
      <div className="container mx-auto px-8 py-16 font-poppins">
        <div className="flex flex-col md:flex-row gap-8 items-start">
          <div className="flex-1">
            <img src='/dashboard/assets/assets/images/happy-couple.png' alt="Happy Couple" className="w-full"/>
          </div>
          <div className="flex-1">
            <h2 className="text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text">{t.welcome_title}</h2>
            <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-6"></div>
            <p className="text-gray-700 mb-8 leading-12">{t.welcome_description}</p>
            <a href="/esim_store" className="inline-block bg-gradient-to-r from-[#008799] to-[#00E0FF] text-white px-6 py-3 rounded-full font-bold hover:opacity-90 transition-all">
              {t.discover}
            </a>
          </div>
        </div>
      </div>
    );
  }

  const buildPlansSection = (t: TranslationStrings): JSX.Element => {
    return (
    <div className="relative bg-gradient-to-r from-[#763BB7] to-[#E76BA0] py-24 md:py-48 lg:py-96">
      <div className="container mx-auto px-4 md:px-8 font-poppins">
        <div className="bg-white rounded-3xl shadow-2xl p-6 md:p-8">

          {/* Header - Hidden on mobile */}
          <div className="hidden md:grid grid-cols-4 gap-8 mb-8">
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.plan_type}
              </h3>
            </div>
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.data_allowance}
              </h3>
            </div>
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.validity}
              </h3>
            </div>
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.price}
              </h3>
            </div>
          </div>

          <div className="h-px bg-gray-200 mb-8 hidden md:block"></div>

          {/* Plan Details */}
          <div className="grid grid-cols-1 md:grid-cols-7 gap-8 md:gap-4 mx-4 md:mx-12">

            {/* Plan Types */}
            <div className="space-y-4 md:space-y-8">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.plan_type}
              </h3>
              <div className="flex items-center justify-center gap-4">
                <img src="assets/assets/icons/flag.png" alt="Country" className="w-6 h-6" />
                <span className="text-gray-700">{t.country}</span>
              </div>
              <div className="flex items-center justify-center gap-4">
                <img src="assets/assets/icons/globe-gradient.png" alt="Global" className="w-6 h-6" />
                <span className="text-gray-700">{t.global}</span>
              </div>
              <div className="flex items-center justify-center gap-4">
                <img src="assets/assets/icons/buildings-gradient.png" alt="Regional" className="w-6 h-6" />
                <span className="text-gray-700">{t.regional}</span>
              </div>
            </div>

            {/* Divider - Hidden on mobile */}
            <div className="hidden md:flex justify-center">
              <div className="w-4 h-48 bg-gradient-to-b from-[#763BB7] to-[#E76BA0] opacity-50 rounded-full"></div>
            </div>

            {/* Data Allowance */}
            <div className="space-y-4 md:space-y-8 text-center">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.data_allowance}
              </h3>
              <div>
                <span className="font-bold">{`${t.up_to} 100 `}</span>
                <span className="font-normal">{t.gb}</span>
              </div>
              <div>
                <span className="font-bold">{`${t.up_to} 50 `}</span>
                <span className="font-normal">{t.gb}</span>
              </div>
              <div>
                <span className="font-bold">{`${t.up_to} 100 `}</span>
                <span className="font-normal">{t.gb}</span>
              </div>
            </div>

            {/* Divider - Hidden on mobile */}
            <div className="hidden md:flex justify-center">
              <div className="w-4 h-48 bg-gradient-to-b from-[#763BB7] to-[#E76BA0] opacity-50 rounded-full"></div>
            </div>

            {/* Validity */}
            <div className="space-y-4 text-center">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.validity}
              </h3>
              <div>
                <span className="font-normal">{t.up_to}</span><br />
                <span className="font-bold">{`180 ${t.days} `}</span>
                <span className="font-normal">{t.postpaid}</span>
              </div>
              <div className="flex justify-center">
                <img src="assets/assets/icons/arrow-gradinet.png" alt="Arrow" className="w-1.5 h-4" />
              </div>
              <div>
                <span className="font-bold">{`${t.unlimited} `}</span>
                <span className="font-normal">{t.prepaid}</span>
              </div>
            </div>

            {/* Divider - Hidden on mobile */}
            <div className="hidden md:flex justify-center">
              <div className="w-4 h-48 bg-gradient-to-b from-[#763BB7] to-[#E76BA0] opacity-50 rounded-full"></div>
            </div>

            {/* Price */}
            <div className="space-y-4 md:space-y-8 text-center">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.price}
              </h3>
              <div>
                <span className="font-bold">1 </span>
                <span className="font-normal">{t.gb}</span>
              </div>
              <div className="flex justify-center">
                <img src="assets/assets/icons/double-transfer.png" alt="Transfer" className="w-3 h-4" />
              </div>
              <div>
                <span className="font-bold">{`${t.less_than} 3 `}</span>
                <span className="font-normal">{t.usd}</span>
              </div>
            </div>

          </div>
        </div>
      </div>

      <div className="w-full overflow-hidden absolute top-0">
        <img src="/dashboard/assets/assets/images/esim-wave-1.svg" alt="Wave 1" className="w-full scale-x-[1.01]" />
      </div>
      <div className="w-full overflow-hidden absolute bottom-0">
        <img src="/dashboard/assets/assets/images/esim-wave-2.svg" alt="Wave 2" className="w-full scale-x-[1.01]" />
      </div>
    </div>
    );
  }

  const buildExperienceSection = (t: TranslationStrings): JSX.Element => {
    return (
          <div className="container mx-auto px-8 py-16 font-poppins">
      <div className="flex flex-col md:flex-row sm:gap-32 gap-12 items-center">
        <div className="flex-1">
          <h2 className="text-3xl font-bold mb-4 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
            {t.experience_title}
          </h2>
          <div className="w-10 h-1 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] rounded mb-6"></div>
          <p className="text-gray-700 mb-8 leading-12">
            {t.experience_description}
          </p>
          <a
            href="/app#/esim_store"
            className="inline-block bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-white px-8 py-4 rounded-full font-bold hover:opacity-90 transition-all"
          >
            {t.discover}
          </a>
        </div>
        <div className="flex-1">
          <img
            src="/dashboard/assets/assets/images/esim-dj.png"
            alt="Esim DJ"
            className="w-2/3"
          />
        </div>
      </div>
    </div>
    );
  }

  const buildBuyEsimSection = (t: TranslationStrings): JSX.Element => {
    return (
          <div className="relative h-[900px] md:h-[800px]">

      {/* Background with gradient and bubble */}
      <div className="absolute inset-0 bg-gradient-to-r from-[#763BB7] to-[#E76BA0]">
        <div className="p-8">
          <img src="/dashboard/assets/assets/images/bubble1.svg" alt="Bubble 1" className="w-32" />
        </div>
      </div>

      {/* Wave overlay */}
      <div className="w-full overflow-hidden absolute bottom-0">
        <img src="/dashboard/assets/assets/images/esim-wave-2.svg" alt="Wave 2" className="w-full scale-x-[1.01]" />
      </div>

      {/* Content */}
      <div className="relative z-10 container mx-auto px-8 py-16">
        <div className="max-w-4xl mx-auto bg-white rounded-3xl shadow-2xl p-12">
          <h2 className="text-3xl font-bold text-center mb-4 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
            {t.buy_esim_title}
          </h2>
          <div className="w-10 h-1 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] rounded mx-auto mb-8"></div>

          {/* Cards */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">

            {/* Buy Esim Card */}
            <div className="relative">
              <div className="bg-gradient-to-r from-[#763BB7] to-[#E76BA0] p-[1px] rounded-2xl">
                <div className="bg-white rounded-2xl p-8">
                  <div className="flex flex-col items-center">
                    <img
                      src="/dashboard/assets/assets/icons/esim-chip.svg"
                      alt="Esim Chip"
                      className="w-24 h-24 mb-4"
                    />
                    <h3 className="text-xl font-bold text-gray-900">{t.buy_esim}</h3>
                  </div>
                </div>
              </div>
            </div>

            {/* Activate Abroad Card */}
            <div className="relative">
              <div className="bg-gradient-to-r from-[#763BB7] to-[#E76BA0] p-[1px] rounded-2xl">
                <div className="bg-white rounded-2xl p-8">
                  <div className="flex flex-col items-center">
                    <img
                      src="/dashboard/assets/assets/icons/esim-globe.svg"
                      alt="Esim Globe"
                      className="w-24 h-24 mb-4"
                    />
                    <h3 className="text-xl font-bold text-gray-900">{t.activate_abroad}</h3>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    );
  }

  const buildDownloadAppSection = (t: TranslationStrings): JSX.Element => {
    return (
          <div className="relative bg-gradient-to-r from-[#008799] to-[#00E0FF] py-32 md:py-64 lg:py-96 md:mt-12 mt-42">

      <div className="absolute -top-38 md:-top-16 lg:-top-24 z-10 w-full">
        <div className="flex flex-col items-center justify-center px-4">
          <h2 className="text-2xl md:text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
            {t.download_app_title}
          </h2>
          <div className="w-8 md:w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-4 md:mb-6" />
        </div>
        <p className="text-gray-700 mb-4 md:mb-6 max-w-md mx-auto text-center leading-7 md:leading-8 text-sm md:text-base px-4">
          {t.download_app_subtitle}
        </p>
        <div className="flex justify-center gap-3 md:gap-4 mb-8 md:mb-16 items-center">
          <img
            src="assets/assets/icons/app-store-logo.png"
            alt="App Store"
            className="h-8 md:h-10"
          />
          <img
            src="/dashboard/assets/assets/icons/google-play-logo.png"
            alt="Google Play"
            className="h-6 md:h-8"
          />
        </div>
      </div>

      <div className="md:absolute w-full">
        <div className="flex flex-col md:flex-row justify-center gap-4 md:gap-4 lg:gap-6 px-4">
          <img
            src="/dashboard/assets/assets/images/iphone2.svg"
            alt="iPhone 2"
            className="w-[80%] sm:w-1/3 md:w-1/4 lg:w-1/5 max-w-84 mx-auto md:mx-0"
          />
          <div className="w-[80%] sm:w-1/3 md:w-1/4 lg:w-1/5 max-w-84 relative overflow-hidden mx-auto md:mx-0">
            <img
              src="/dashboard/assets/assets/images/iphone-blank.svg"
              alt="iPhone Blank"
              className="w-full"
            />
            <div className="absolute top-0 left-0 w-full h-full flex flex-col justify-center px-[5%] sm:px-[7%]">
              <div className="overflow-x-auto no-scrollbar snap-x snap-mandatory scrollbar-hide h-5/6 -mt-8 sm:-mt-10 md:-mt-12">
                <div className="flex w-full h-full">
                  {/* Slide 1 */}
                  <div className="flex-none w-full h-full snap-center">
                    <div className="flex flex-col justify-center items-center w-full h-full">
                      <img
                        src="/dashboard/assets/assets/images/onboarding1.svg"
                        alt="Onboarding 1"
                        className="m-2 sm:m-3 md:m-4 w-4/5 sm:w-3/4"
                      />
                      <h1 className="text-[16px] sm:text-[18px] md:text-[20px] w-4/5 sm:w-2/3 text-center font-bold font-poppins text-[#1A535C]">
                        {t.onboarding1_title}
                      </h1>
                      <p className="text-[10px] sm:text-[11px] md:text-[12px] w-4/5 sm:w-2/3 text-center font-poppins mt-2 sm:mt-3 md:mt-4">
                        {t.onboarding1_description}
                      </p>
                    </div>
                  </div>

                  {/* Slide 2 */}
                  <div className="flex-none w-full h-full snap-center">
                    <div className="flex flex-col justify-center items-center w-full h-full">
                      <img
                        src="/dashboard/assets/assets/images/onboarding2.svg"
                        alt="Onboarding 2"
                        className="m-2 sm:m-3 md:m-4 w-4/5 sm:w-3/4"
                      />
                      <h1 className="text-[16px] sm:text-[18px] md:text-[20px] w-4/5 sm:w-2/3 text-center font-bold font-poppins text-[#1A535C]">
                        {t.onboarding2_title}
                      </h1>
                      <p className="text-[10px] sm:text-[11px] md:text-[12px] w-4/5 sm:w-2/3 text-center font-poppins mt-2 sm:mt-3 md:mt-4">
                        {t.onboarding2_description}
                      </p>
                    </div>
                  </div>

                  {/* Slide 3 */}
                  <div className="flex-none w-full h-full snap-center">
                    <div className="flex flex-col justify-center items-center w-full h-full">
                      <img
                        src="/dashboard/assets/assets/images/onboarding3.svg"
                        alt="Onboarding 3"
                        className="m-2 sm:m-3 md:m-4 w-4/5 sm:w-3/4"
                      />
                      <h1 className="text-[16px] sm:text-[18px] md:text-[20px] w-4/5 sm:w-2/3 text-center font-bold font-poppins text-[#1A535C]">
                        {t.onboarding3_title}
                      </h1>
                      <p className="text-[10px] sm:text-[11px] md:text-[12px] w-4/5 sm:w-2/3 text-center font-poppins mt-2 sm:mt-3 md:mt-4">
                        {t.onboarding3_description}
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div className="flex justify-center gap-1">
                <div className="w-[8px] h-[8px] sm:w-[10px] sm:h-[10px] border-2 border-[#1A535C] rounded-full"></div>
                <div className="w-[8px] h-[8px] sm:w-[10px] sm:h-[10px] bg-[#1A535C] rounded-full"></div>
                <div className="w-[8px] h-[8px] sm:w-[10px] sm:h-[10px] bg-[#1A535C] rounded-full"></div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="w-full overflow-hidden absolute top-0">
        <img
          src="/dashboard/assets/assets/images/esim-wave-3.svg"
          alt="Wave 3"
          className="w-full scale-x-[1.01]"
        />
      </div>

    </div>
    );
  }

 const buildNewsletterSection = (t: TranslationStrings): JSX.Element => {
    return (
          <div className="container mx-auto px-4 sm:px-8 py-12 sm:py-16 md:mt-78 sm:mt-32 font-poppins">
      <div className="flex flex-col items-center justify-center">
        <h2 className="text-2xl sm:text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
          {t.newsletter_title}
        </h2>
        <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-6" />
      </div>
      <p className="text-gray-700 mb-6 max-w-md mx-auto text-center leading-8 px-4">
        {t.newsletter_subtitle}
      </p>
      <div className="flex flex-col sm:flex-row gap-4 justify-center mt-8 sm:mt-12 w-full max-w-2xl mx-auto px-4">
        <input
          name="email"
          type="email"
          placeholder={t.email}
          className="w-full sm:w-1/2 border border-[#008799] rounded-lg px-4 py-2 text-gray-700 placeholder:text-gray-500"
        />
        <button
          type="submit"
          className="w-full sm:w-auto bg-gradient-to-r from-[#008799] to-[#00E0FF] text-white px-8 py-3 rounded-lg cursor-pointer hover:opacity-80 transition-all duration-300 font-bold text-sm"
        >
          {t.discover}
        </button>
      </div>
    </div>
    );
  }
      
  const Home = async ({ params }: Props) => {
  const { lang } = await params;
  const t = getTranslations(lang);

  return (
    <>
      {buildHeroSection(t)}
      {buildWelcomeSection(t)}
      {buildPlansSection(t)}
      {buildExperienceSection(t)}
      {buildBuyEsimSection(t)}
      {buildDownloadAppSection(t)}
      {buildNewsletterSection(t)}
    </>
  );
}
export default Home;
