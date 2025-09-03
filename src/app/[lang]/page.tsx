import { getTranslations } from "@/shared/l10n/translations";
import Image from "next/image";
import LanguageToggle from "../../shared/components/LanguageSelector";
import Navbar from "@/shared/components/NavBar";
import Footer from "@/shared/components/Footer";

type Props = {
  params: Promise<{ lang: string }>;
};
const Home = async ({ params }: Props) => {
  const { lang } = await params;
  const t = getTranslations(lang);
  return (
    <>
      <Navbar t={t} />
      <div className="relative font-poppins mt-[100px]">
        <div className="bg-gradient-to-r from-[#008799] to-[#00E0FF]">
          <div className="container mx-auto px-8 pt-24 pb-48">
            <div className="flex flex-col md:flex-row items-start gap-8">
              <div className="flex-1 text-white">
                <h1 className="text-4xl md:text-5xl leading-15 mb-4">
                  {t.hero_title}
                </h1>
                <span className="font-bold">{t.hero_title_bold}</span>,
              </div>
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
      <Footer t={t}/>
    </>
  );
}

export default Home;
