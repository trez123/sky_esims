import { getTranslations } from "@/shared/l10n/translations";

interface ValueCardProps {
  icon: string;
  title: string;
  description: string;
}

const ValueCard: React.FC<ValueCardProps> = ({ icon, title, description }) => (
  <div className="bg-white p-8 rounded-2xl shadow-lg">
    <div className="flex flex-col items-center text-center">
      <img src={icon} alt={title} className="w-42 h-42 mb-4" />
      <h3 className="text-xl font-bold mb-4">{title}</h3>
      <p className="text-gray-600">{description}</p>
    </div>
  </div>
);

interface TeamMemberProps {
  image: string;
  name: string;
  role: string;
}

const TeamMember: React.FC<TeamMemberProps> = ({ image, name, role }) => (
  <div className="text-center">
    <img
      src={image}
      alt={name}
      className="w-48 h-48 rounded-full mx-auto mb-4 object-cover"
    />
    <h3 className="text-xl font-bold mb-2">{name}</h3>
    <p className="text-gray-600">{role}</p>
  </div>
);

type AboutPageProps = {
  params: Promise<{ lang: string }>;
};
const AboutPage: React.FC<AboutPageProps> = async ({ params }: AboutPageProps) => {
      const { lang } = await params;
      const t = getTranslations(lang);
    
  return (
    <div className="bg-white min-h-screen font-poppins mt-[100px]">
      {/* Hero Section */}
      <div className="relative">
        <div className="bg-gradient-to-r from-[#008799] to-[#00E0FF]">
          <div className="container mx-auto px-8 pt-16 pb-48">
            <div className="flex flex-col items-center text-center">
              <h1 className="text-4xl md:text-5xl leading-15 mb-4 text-white font-bold">
                {t.about_title}
              </h1>
              <p className="text-lg mb-8 font-light max-w-2xl text-white">
                {t.about_subtitle}
              </p>
            </div>
          </div>
        </div>
        <img
          src="/dashboard/assets/assets/images/esim-wave.svg"
          alt="Wave"
          className="w-full absolute bottom-0"
        />
      </div>

      {/* Mission Section */}
      <div className="container mx-auto px-8 py-16">
        <div className="max-w-4xl mx-auto">
          <h2 className="text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
            {t.our_mission}
          </h2>
          <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mx-auto mb-8" />
          <p className="text-gray-700 mb-8 leading-12 text-center">
            {t.mission_description}
          </p>
        </div>
      </div>

      {/* Values Section */}
      <div className="bg-gray-50 py-16">
        <div className="container mx-auto px-8">
          <h2 className="text-3xl font-bold mb-12 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center">
            {t.our_values}
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-6xl mx-auto">
            <ValueCard
              icon="/dashboard/assets/assets/images/onboarding1.svg"
              title={t.reliable_connectivity}
              description={t.reliable_connectivity_desc}
            />
            <ValueCard
              icon="/dashboard/assets/assets/images/onboarding2.svg"
              title={t.customer_first}
              description={t.customer_first_desc}
            />
            <ValueCard
              icon="/dashboard/assets/assets/images/onboarding3.svg"
              title={t.innovation}
              description={t.innovation_desc}
            />
          </div>
        </div>
      </div>

      {/* Team Section - Uncomment and add localizations and team data if needed */}
      {/*
      <div className="container mx-auto px-8 py-16">
        <h2 className="text-3xl font-bold mb-12 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
          {t.ourTeam}
        </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-6xl mx-auto">
          <TeamMember
            image="https://ik.imagekit.io/qb5fs9jxh/Portfolio/image%202.png?updatedAt=1744935082055"
            name="Silas Coley"
            role={t.ceoAndCto}
          />
          <TeamMember
            image="https://ik.imagekit.io/qb5fs9jxh/Portfolio/people-svgrepo-com-2.svg?updatedAt=1748488141491"
            name="Adrian Crawford"
            role={t.seniorSoftwareEngineer}
          />
          <TeamMember
            image="https://ik.imagekit.io/qb5fs9jxh/Portfolio/people-svgrepo-com-2.svg?updatedAt=1748488141491"
            name="Moyandra Robinson"
            role={t.supportManager}
          />
        </div>
      </div>
      */}
    </div>
  );
};

export default AboutPage;
