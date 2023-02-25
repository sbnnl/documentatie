#language: nl
Functionaliteit: Kredietbanken beheren (f0dc95e457ab943a704d649e24fcfe99)

  Abstract Scenario: "KREDIETBANK_OPVRAGEN" permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "KREDIETBANK_OPVRAGEN"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | wel      |
    | sbf         | niet     |
    | systeem     | niet     |
    | kredietbank | niet     |

  Abstract Scenario: "KREDIETBANK_AANMAKEN" permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "KREDIETBANK_AANMAKEN"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | wel      |
    | sbf         | niet     |
    | systeem     | niet     |
    | kredietbank | niet     |

  Abstract Scenario: "KREDIETBANK_WIJZIGEN" permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "KREDIETBANK_WIJZIGEN"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | wel      |
    | sbf         | niet     |
    | systeem     | niet     |
    | kredietbank | niet     |

  Abstract Scenario: "KREDIETBANK_UITZETTEN" permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "KREDKREDIETBANK_UITZETTENIETBANK_AANMAKEN"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | wel      |
    | sbf         | niet     |
    | systeem     | niet     |
    | kredietbank | niet     |

  Abstract Scenario: "geef kredietbanken" use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "geef kredietbanken" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | sbn                                                       | wel      |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | kredietbank                                               | niet     |

  Abstract Scenario: "geef kredietbank" use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "geef kredietbank" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | sbn                                                       | wel      |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | kredietbank                                               | niet     |

  Abstract Scenario: "kredietbank aanmaken" use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "kredietbank aanmaken" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | sbn                                                       | wel      |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | kredietbank                                               | niet     |

  Abstract Scenario: "wijzig kredietbank" use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "wijzig kredietbank" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | sbn                                                       | wel      |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | kredietbank                                               | niet     |

  Abstract Scenario: "zet kredietbank uit" use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "zet kredietbank uit" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | sbn                                                       | wel      |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | kredietbank                                               | niet     |
    