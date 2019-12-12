enum SLOT_TYPE { FIFTEEN, TWENTY }
enum FLEET { A330, B787, B737, E190 }
enum RANK { CPT, FO }

FLEET getFleetFromString(String txt) {
  switch (txt) {
    case 'A330':
      return FLEET.A330;
    case 'B787':
      return FLEET.B787;
    case 'B737':
      return FLEET.B737;
    case 'E190':
      return FLEET.E190;
  }
  return null;
}

RANK getRankFromString(String txt) {
  switch (txt) {
    case 'CPT':
      return RANK.CPT;
    case 'FO':
      return RANK.FO;
  }
  return null;
}