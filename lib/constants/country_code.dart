class Country {
  Country(this.name, this.domain);
  final String name;
  final String domain;
}

Country unitedArabEmirates = Country('United Arab Emirates', "ae");
Country swizerland = Country("Swizerland", "ch");
Country russia = Country("Russai", "ru");
Country indonesia = Country("Indonesia", "id");
Country india = Country("India", "in");
Country unitedStates = Country("Usa", "us");
Country korea = Country("Korea", "kr");
Country turkey = Country("Turkey", "tr");
Country ukraine = Country("Ukraine", "ua");

List<Country> countryList = [
  unitedArabEmirates,
  swizerland,
  russia,
  indonesia,
  india,
  unitedStates,
  korea,
  turkey,
  ukraine,
];

Set<Country> countrySet = {
  unitedArabEmirates,
  swizerland,
  russia,
  indonesia,
  india,
  unitedStates,
  korea,
  turkey,
  ukraine,
};
