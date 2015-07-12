<?xml version="1.0" encoding="UTF-8"?>
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <!-- layout master -->
  <fo:layout-master-set>
    <!-- definition of physical page -->
    <fo:simple-page-master master-name="test_job" page-height="297mm" page-width="210mm" margin-top="18pt" margin-bottom="18pt" margin-left="36pt" margin-right="36pt">
      <!-- definition of printable areas -->
      <!-- body dimensions -->
      <fo:region-body margin-top="36pt" margin-bottom="36pt"/>
      <!-- header dimensions (height) -->
      <fo:region-before extent="24pt" precedence="true"/>
      <!-- footer dimensions (height) -->
      <fo:region-after extent="24pt" precedence="true"/>
    </fo:simple-page-master>
  </fo:layout-master-set>
  <!-- pagination specification -->
  <fo:page-sequence master-reference="test_job" xml:lang="en">
    <!-- document title -->
    <fo:title>PLOS ONE</fo:title>
    <fo:static-content flow-name="xsl-region-before">
      <fo:table table-layout="fixed" width="100%" font-size="9pt">
        <fo:table-column column-number="1" column-width="proportional-column-width(1)"/>
        <fo:table-column column-number="2" column-width="proportional-column-width(1)"/>
        <fo:table-body>
          <fo:table-row font-size="9pt" height="16pt" padding-bottom="3pt">
            <fo:table-cell display-align="after">
              <fo:block text-align="left">something</fo:block>
            </fo:table-cell>
            <fo:table-cell display-align="after">
              <fo:block text-align="right">or_other</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
      <!-- horizontal rule -->
      <fo:block line-height="2pt" margin="0pt">
        <fo:leader leader-pattern="rule" leader-length.optimum="100%" color="gray" rule-thickness="2pt"/>
      </fo:block>
    </fo:static-content>
    <fo:static-content flow-name="xsl-region-after">
      <!-- horizontal rule -->
      <fo:block line-height="2pt" margin="0pt">
        <fo:leader leader-pattern="rule" leader-length.optimum="100%" color="gray" rule-thickness="2pt"/>
      </fo:block>
      <fo:table table-layout="fixed" width="100%" font-size="9pt">
        <fo:table-column column-number="1" column-width="proportional-column-width(1)"/>
        <fo:table-column column-number="2" column-width="proportional-column-width(1)"/>
        <fo:table-body>
          <fo:table-row font-size="9pt" height="16pt" padding-bottom="3pt">
            <fo:table-cell display-align="after">
              <fo:block text-align="left">something</fo:block>
            </fo:table-cell>
            <fo:table-cell display-align="after">
              <fo:block text-align="right">or_other</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
      </fo:table>
    </fo:static-content>
    <fo:flow flow-name="xsl-region-body">
      <!-- content -->
      <!-- front -->
      <!-- subject -->
      <fo:block font-family="DroidSans" font-size="8pt" padding-top="18pt">RESEARCH ARTICLE</fo:block>
      <!-- title -->
      <fo:block font-family="DroidSans" font-size="18pt" padding-top="8pt">
        <fo:inline>Parentage of Overlapping Offspring of an Arboreal-Breeding Frog with No Nest Defense: Implications for Nest Site Selection and Reproductive Strategy</fo:inline>
      </fo:block>
      <!-- authors -->
      <fo:block font-family="DroidSans" text-align="start" line-height="1.5" font-weight="bold" font-size="10pt" padding-top="12pt">
        <fo:inline>Wan-Ping Tung</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Yi-Huey Chen</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">2</fo:inline>
        <fo:inline>, Wei-Chun Cheng</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Ming-Feng Chuang</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Wan-Tso Hsu</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Yeong-Choy Kam</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Richard M. Lehtinen</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">3</fo:inline>
      </fo:block>
      <!-- affiliation(s) -->
      <fo:block font-family="DroidSans" text-align="justify" font-size="8pt" padding-top="6pt" padding-bottom="6pt">
        <fo:inline font-weight="bold">1</fo:inline>
        <fo:inline>Department of Life Science, Tunghai University, Taichung 407, Taiwan</fo:inline>
        <fo:inline font-weight="bold">2</fo:inline>
        <fo:inline>Department of Life Science, Chinese Culture University, Taipei, Taiwan</fo:inline>
        <fo:inline font-weight="bold">3</fo:inline>
        <fo:inline>Department of Biology, The College of Wooster, Wooster, Ohio 44691, United States of America</fo:inline>
      </fo:block>
      <!-- preface -->
      <fo:block border-style="solid" border-width="1.5pt">
        <!-- abstract -->
        <fo:block background-color="#DEDEDE" margin="6pt" padding="8pt">
          <fo:block font-family="DroidSans" font-weight="bold" font-size="12pt">Abstract</fo:block>
          <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
            <fo:inline>Overlapping offspring occurs when eggs are laid in a nest containing offspring from earlier reproduction. Earlier studies showed that the parentage is not always obvious due to difficulties in field observation and/or alternative breeding tactics. To unveil the parentage between overlapping offspring and parents is critical in understanding oviposition site selection and the reproductive strategies of parents. Amplectant pairs of an arboreal-breeding frog, </fo:inline>
            <fo:inline font-style="italic">Kurixalus eiffingeri</fo:inline>
            <fo:inline>, lay eggs in tadpole-occupied nests where offspring of different life stages (embryos and tadpoles) coexist. We used five microsatellite DNA markers to assess the parentage between parents and overlapping offspring. We also tested the hypothesis that the male or female frog would breed in the same breeding site because of the scarcity of nest sites. Results showed varied parentage patterns, which may differ from the phenomenon of overlapping egg clutches reported earlier. Parentage analyses showed that only 58 and 25% of the tadpole-occupied stumps were reused by the same male and female respectively, partially confirming our prediction. Re-nesting by the same individual was more common in males than females, which is most likely related to the cost of tadpole feeding and/or feeding schemes of females. On the other hand, results of parentage analyses showed that about 42 and 75% of male and female respectively bred in tadpole-occupied stumps where tadpoles were genetically unrelated. Results of a nest-choice experiment revealed that 40% of frogs chose tadpole-occupied bamboo cups when we presented identical stumps, without or with tadpoles, suggesting that the habitat saturation hypothesis does not fully explain why frogs used the tadpole-occupied stumps. Several possible benefits of overlapping offspring with different life stages were proposed. Our study highlights the importance of integrating molecular data with field observations to better understand the reproductive biology and nest site selection of anuran amphibians.</fo:inline>
          </fo:block>
        </fo:block>
        <fo:block font-family="DroidSans" margin-left="6pt" margin-right="6pt" font-size="8pt">
          <!-- article meta information -->
          <fo:block padding="4pt">
            <fo:inline font-weight="bold">Received: </fo:inline>
            <fo:inline>June 17, 2014; </fo:inline>
            <fo:inline font-weight="bold">Accepted: </fo:inline>
            <fo:inline>March  1, 2015; </fo:inline>
            <fo:inline font-weight="bold">Published: </fo:inline>
            <fo:inline>April  2, 2015</fo:inline>
          </fo:block>
          <!-- copyright -->
          <fo:block padding="4pt">
            <fo:inline font-family="DroidSans" font-weight="bold">Copyright: </fo:inline>
            <fo:inline>© 2015 Tung et al. This is an open
          access article distributed under the terms of the
          Creative Commons Attribution License, which permits
          unrestricted use, distribution, and reproduction in any
          medium, provided the original author and source are
          credited.</fo:inline>
          </fo:block>
          <!-- conflicting interests -->
          <fo:block padding="4pt">
            <fo:inline font-weight="bold">Competing Interests: </fo:inline>
            <fo:inline>The authors have declared that no competing interests exist.</fo:inline>
          </fo:block>
        </fo:block>
      </fo:block>
      <!-- body -->
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Introduction</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Overlapping offspring is an interesting phenomenon that occurs more commonly than originally thought, but the patterns, causes, and ecological and evolutionary consequences are not fully understood. When sites are reused for reproduction, the sites may be empty (if previous offspring have left) or may contain offspring from earlier reproduction. If offspring from previous reproduction remain, this results in two overlapping cohorts. Overlapping offspring are commonly found in many oviparous animals such as insects [</fo:inline>
        <fo:inline>1</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>2</fo:inline>
        <fo:inline>], fishes [</fo:inline>
        <fo:inline>3</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>4</fo:inline>
        <fo:inline>], amphibians [</fo:inline>
        <fo:inline>5</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>8</fo:inline>
        <fo:inline>] and birds [</fo:inline>
        <fo:inline>9</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>12</fo:inline>
        <fo:inline>]. Often, it is assumed that the overlapping offspring are produced by the same parents; however, the parentage of offspring is not always obvious due to difficulties in field observation and/or alternative breeding tactics [</fo:inline>
        <fo:inline>13</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>15</fo:inline>
        <fo:inline>]. For example, when an intruding male fish takes over an egg-filled nest, it attends the eggs but also breeds with other females, resulting in overlapping offspring with multiple parentage [</fo:inline>
        <fo:inline>13</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>16</fo:inline>
        <fo:inline>]. Similarly, in a salamander (</fo:inline>
        <fo:inline font-style="italic">Hemidactylium scutatum</fo:inline>
        <fo:inline>), joint nesting, where several females lay eggs at a site, can also result in complex parentage [</fo:inline>
        <fo:inline>17</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>19</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>The parentage between overlapping offspring and nest users could lead to differences in reproductive strategy and nest site selection. When an adult reuses a nest occupied by a conspecific, it may contain genetically related or unrelated offspring. The former could be a case of nest-site fidelity [</fo:inline>
        <fo:inline>20</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>21</fo:inline>
        <fo:inline>] whereas the latter could be a case of oviposition site selection [</fo:inline>
        <fo:inline>22</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>25</fo:inline>
        <fo:inline>]. Breeding site fidelity can be viewed as beneficial because the familiarity with an area could increase foraging efficiency, reduce predation risk [</fo:inline>
        <fo:inline>26</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>27</fo:inline>
        <fo:inline>], increase chances of pairing with a familiar partner [</fo:inline>
        <fo:inline>28</fo:inline>
        <fo:inline>], maintain social status [</fo:inline>
        <fo:inline>29</fo:inline>
        <fo:inline>], and reduce ectoparasitism [</fo:inline>
        <fo:inline>30</fo:inline>
        <fo:inline>], all of which facilitate nesting success and offspring survival [</fo:inline>
        <fo:inline>21</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>31</fo:inline>
        <fo:inline>]. In contrast, the reuse of occupied-nests with genetically unrelated young could be a case of the saturation of breeding sites that force breeding pairs to oviposit in an occupied site [</fo:inline>
        <fo:inline>32</fo:inline>
        <fo:inline>] or of conspecific attraction because the presence of conspecifics may represent the quality of breeding resources [</fo:inline>
        <fo:inline>22</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>24</fo:inline>
        <fo:inline>]. Furthermore, for species with parental care, reusing a nest has additional ecological consequences. An adult may raise two cohorts of its own offspring simultaneously when it reuses its own nest [</fo:inline>
        <fo:inline>9</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>10</fo:inline>
        <fo:inline>]. In contrast, when breeding in the nests of others, adults may raise genetically unrelated offspring (if it reproduces and stays) or be a brood-parasite (if it reproduces and leaves). Parental care is energetically expensive, and an investment in genetically unrelated young usually will decrease the ability of an animal to produce its own offspring, thereby reducing its fitness [</fo:inline>
        <fo:inline>33</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In this study, we used a Taiwanese frog (</fo:inline>
        <fo:inline font-style="italic">Kurixalus eiffingeri</fo:inline>
        <fo:inline> (Anura: Rhacophoridae)) that breeds in water-filled bamboo stumps as a model animal to study the parentage between overlapping offspring and its ecological consequence on reproductive strategy and nest site selection. Specifically, we used (1) five microsatellite DNA markers to analyze the parentage of adults and tadpoles and (2) paired bamboo cups with and without tadpoles to study the nest choice of frogs and to reveal the possible causes of nest reuse.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Amplectant pairs of </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> lay fertilized eggs above the water line on the inner walls of bamboo stumps or tree holes [</fo:inline>
        <fo:inline>34</fo:inline>
        <fo:inline>]. It exhibits complex parental care which includes paternal care to eggs and subsequent maternal care to larvae. Male frogs attend nests during the embryonic stages (ca. 10–14 d), and they leave the stumps after embryos have hatched and do not defend the nest site afterwards [</fo:inline>
        <fo:inline>35</fo:inline>
        <fo:inline>]. Tadpoles live the water pool where they grow and develop until metamorphosis (larval period is about 45–60 d). Tadpoles are obligatorily oophagous and are fed by females that lay unfertilized, trophic eggs directly in the water, in the absence of male frogs [</fo:inline>
        <fo:inline>36</fo:inline>
        <fo:inline>]. Female frogs visit and feed tadpoles at intervals of about 8 d, and feeding occurs only at night [</fo:inline>
        <fo:inline>37</fo:inline>
        <fo:inline>]. Females leave the nest after feeding and do not have any other form of care (such as defending a nest site against predators). In the field, we have observed egg-attending males calling and obtaining a new batch of eggs, resulting in overlapping offspring in slightly different developmental stages. Calling to attract females during egg attendance is an alternative reproductive strategy to compensate for the loss of future mating opportunities [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>]. In addition, we have also observed that frogs oviposited in tadpole-occupied bamboo stumps, resulting in a coexistence of offspring with different life stages (i.e., embryonic and larval stages) [</fo:inline>
        <fo:inline>39</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>]. Upon hatching, newly-hatched tadpoles coexist with larger, older tadpoles from an early-laid egg clutch [</fo:inline>
        <fo:inline>39</fo:inline>
        <fo:inline>]. Given that the timing of deposition of two egg clutches is separated temporally, we predicted that these breeding patterns (oviposition in egg- or tadpole-occupied stumps) represents different reproductive strategies; consequently, the parentage between the adults and the two cohorts of offspring is expected to be different.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Water pools in bamboo stumps, like other phytotelmata, are ephemeral habitats that are structurally simple and prone to desiccation, but the quality and availability of these reproductive resources vary in time and space [</fo:inline>
        <fo:inline>41</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>44</fo:inline>
        <fo:inline>]. Earlier studies on </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> demonstrated severe inter-clutch competition for food between successive cohorts of tadpoles. Larger, older tadpoles from the early-laid clutch outcompete smaller, younger tadpoles from the late-laid clutch and suppress their growth and development [</fo:inline>
        <fo:inline>39</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>45</fo:inline>
        <fo:inline>]. In </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline>, the oviposition decisions of frogs can be time- and context-dependent, and some breeding sites can be repeatedly used throughout breeding season, resulting in overlapping cohorts in a pool [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>]. However, the parentage between adults and tadpoles is unknown, thus the reproductive strategies cannot be determined. Given that the availability of breeding resources is limited and inter-clutch competition of tadpoles is severe, we predicted that if a stump is reused, it is most likely used by the same male or female frog because breeding sites are hard to locate and the familiarity of a nest site facilitates the reproductive success of the parents.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Materials and Methods</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Study site</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We conducted experiments in the bamboo forests at Chitou in Nantou County, Taiwan. The average monthly temperature is 18 °C, and the total annual rainfall is about 3000 mm [</fo:inline>
        <fo:inline>46</fo:inline>
        <fo:inline>]. The rainy season is from February to September. Local farmers cut bamboo (</fo:inline>
        <fo:inline font-style="italic">Phyllostachys edulis</fo:inline>
        <fo:inline>) for commercial purposes, and the stumps collect rain water and become suitable breeding sites for </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> [</fo:inline>
        <fo:inline>46</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Field Procedure</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Survey and sample collection of overlapping clutches</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>From March—August 2007–2009, we conducted field surveys to collect adults (males and/or females) and overlapping offspring (eggs and tadpoles) for parentage analyses. We first surveyed bamboo forests and located bamboo stumps containing tadpoles. We marked the stumps and monitored them if an egg clutch was found in the inner wall of stumps above the water line. We surveyed stumps every 3–7 d., dependent upon the breeding activity of frogs. Once an egg clutch was found in a tadpole-occupied stump, we collected all eggs and tadpoles about five days later and reared them in the laboratory in order to sample tissues for parentage analyses.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We captured and toe-clipped attending male frogs and preserved the tissue individually in 95% ethanol. Feeding females were more difficult to capture because they return to the nest during the night at an interval of about eight days [</fo:inline>
        <fo:inline>37</fo:inline>
        <fo:inline>]. Nevertheless, from June 27 to August 31, 2009, we set up funnel traps on the opening of stumps to trap feeding females [</fo:inline>
        <fo:inline>37</fo:inline>
        <fo:inline>]. If an egg clutch was deposited in a tadpole-occupied stump, we would remove eggs and tadpoles and transport them back to the laboratory about five days later. To continue the trapping procedure, we put ten tadpoles that had been collected from bamboo stumps at least 1–2 km away into the emptied stump. Female </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> do not discriminate kin from non-kin[</fo:inline>
        <fo:inline>37</fo:inline>
        <fo:inline>], and we could capture them while they were feeding the substitute tadpoles. Upon capture, we toe-clipped female frogs and preserved the tissue individually in 95% ethanol.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In the laboratory, we incubated egg clutches separately on moist substrates until hatching. We reared tadpoles in beakers (ca. 1 L water) and fed them with chicken egg yolk once every 4 days until they reached metamorphosis. Chicken egg yolk is a good substitute for </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> eggs [</fo:inline>
        <fo:inline>47</fo:inline>
        <fo:inline>]. When tadpoles reached Gosner stage 40, we clipped a distal portion of tadpoles’ tail (i.e., 10% or less of total tail length) and preserved tissues in 95% ethanol for parentage analyses.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Nest choice experiment</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>From April 17 to August 15, 2013, we conducted a manipulated experiment where paired bamboo cups, with and without tadpoles, were set up to investigate nest choice of frogs. First, we collected bamboo trunks which were cut by local farmers to thin the forest and sawed a section of trunk (i.e., an internode) which contains a septum at each end. We then sawed the middle of the internode which resulted in two identical bamboo cups and tied them to a bamboo stump (</fo:inline>
        <fo:inline>Fig 1</fo:inline>
        <fo:inline>). Bamboo stumps were covered by plastic sheet to prevent frogs from depositing eggs. We randomly designated one cup as the control and the other as the experimental group. A control group contained water only but the experimental group contained water and 5 tadpoles (Gosner stage 28–35). We filled the paired-bamboo cups with 7 cm of water [</fo:inline>
        <fo:inline>46</fo:inline>
        <fo:inline>]. We drilled small holes in the bamboo wall to prevent a rise of the water level from rainfall and, where necessary, added water to prevent the drop of water level by evaporation [</fo:inline>
        <fo:inline>25</fo:inline>
        <fo:inline>]. Tadpoles were collected from bamboo stumps at least 1–2 km away. We set up 50–80 paired-bamboo cups each week during the study period, dependent upon the breeding activity of frogs and availability of tadpoles.</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123221/graphics/journal.pone.0123221.g001"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We surveyed the paired-bamboo cups every 4 days. Once fertilized eggs were found on the inner wall of a bamboo cup above the water line, we recorded which cup was used and the clutch size. Subsequently, these paired-bamboo cups were no longer used for the rest of our experiment, and we usually set up new paired-bamboo cups in nearby bamboo forests. In each survey, we removed the tadpoles from the bamboo cups, fed them with raw chicken egg yolk in a water bowl, and returned them to bamboo cups after feeding [</fo:inline>
        <fo:inline>47</fo:inline>
        <fo:inline>]. If tadpoles reached metamorphic stages, Gosner stage 40 or older, we replaced them with younger tadpoles.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Genetic analyses on the parentage of tadpoles and adults</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Detailed methods on parentage analyses were reported by Chen et al [</fo:inline>
        <fo:inline>48</fo:inline>
        <fo:inline>]. Briefly, we used five polymorphic microsatellite loci (CEd12365, CEd15688, CEd19063, CEd13854, and CEd19091) to conduct parentage analyses [</fo:inline>
        <fo:inline>48</fo:inline>
        <fo:inline>]. At first, DNA was extracted from tissues, amplified, and genotyped using standard methods [</fo:inline>
        <fo:inline>48</fo:inline>
        <fo:inline>]. Program Cervus 3.0 [</fo:inline>
        <fo:inline>49</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>50</fo:inline>
        <fo:inline>] was used to calculate the number of alleles, allele frequencies, null allele frequencies and exclusion probabilities for each locus, and the combined exclusion probability. The combined exclusion probability across all loci was 0.987 when the genotype of a parent is known [</fo:inline>
        <fo:inline>48</fo:inline>
        <fo:inline>]. The likelihood-based, COLONY 2 program [</fo:inline>
        <fo:inline>51</fo:inline>
        <fo:inline>] was used to analyze genetic relationships between the attending males, feeding females and the offspring in the nests.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Based on the results of the parentage analyses, we deduced the mating pattern of frogs (</fo:inline>
        <fo:inline>S1 Table</fo:inline>
        <fo:inline>). We defined (1) a synchronous polyandrous female as one which mates with multiple males at the same time [</fo:inline>
        <fo:inline>15</fo:inline>
        <fo:inline>]; (2) a sequentially polygynous male as one which mates with several different females at different periods of time [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>]; (3) a sequential multi-mating event as a series of matings that occur within a short time, such as in a night or within a week. Each mating could be monogamous, polyandrous, or polygynous.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Also, based on the results of parentage analyses, we further assessed whether individuals that breed earlier in a stump would reuse the same stump again. For example, if the early-laid clutch is a result of mating by a male (A) and female (X) and the late-laid clutch by two males (A and B) and a female (Y), then we conclude that the tadpole-occupied stump was reused by the same male (i.e., A) but different females (i.e., X and Y). In contrast, if the early-laid clutch is a result of mating by two males (C and D) and a female (Z) and the late-laid clutch by a male (E) and female (Z), then we conclude that the tadpole-occupied stumps were reused by the different males (i.e., C, D, and E) but same female (i.e., Z).</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Statistical analyses</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>All statistical analyses of the data were performed with SAS [</fo:inline>
        <fo:inline>52</fo:inline>
        <fo:inline>]. We used a G test to assess the occurrence of stump use by frogs and proportion of nest reuse among sexes [</fo:inline>
        <fo:inline>53</fo:inline>
        <fo:inline>]. We used the Wilcoxon rank sum test to compare the clutch size of eggs laid in empty and tadpole-occupied stumps. Unless stated otherwise, we report the mean ± SD of each variable.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Ethic statement</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline font-style="italic">Kurixalus eiffingeri</fo:inline>
        <fo:inline> is not an endangered or protected species and thus no specific permission is needed for field studies. Some bamboo forests in Chitou are privately owned, and we had verbal permission from land owners (Mr. Pan Yeong-Sung and Ms Chen Mei-Chi) to conduct observational and field studies (23</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">o</fo:inline>
        <fo:inline>41’05.4” N 130</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">o</fo:inline>
        <fo:inline>47’45.4” E and 23</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">o</fo:inline>
        <fo:inline>41’22.8” N 130</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">o</fo:inline>
        <fo:inline>47’22.5” E, respectively).</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Institutional Animal Care and Use Committee (IACUC) of Tunghai University has specifically approved this study (Approval No. 100–19). We captured and toe-clipped attending males and feeding females and preserved the tissue individually in 95% ethanol for parentage analyses. Because only the most distal segment of the second toe was clipped, the toe-clipping is likely to have a minimal effect on the individual [</fo:inline>
        <fo:inline>48</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>54</fo:inline>
        <fo:inline>]. When tadpoles reached Gosner stage 40, we clipped a distal portion of tadpoles’ tail (i.e., 10% or less of total tail length) [</fo:inline>
        <fo:inline>48</fo:inline>
        <fo:inline>]. Due to the fast healing of wounds (1–2 days) and sedentary nature of tadpoles, the tail-clipping is likely to have little effect on activity and feeding of tadpoles [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>48</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Results</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Field observation and sample collection for parentage analyses</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We located 64 bamboo stumps in total that contained eggs and tadpoles simultaneously (18, 19, and 27 stumps in 2007–2009, respectively). The average number of eggs (i.e., late-laid clutch) and tadpoles (i.e., early-laid clutch) found in the stumps was 44.3 ± 24.6 (range: 10–155) and 10.5 ± 7.7 (range: 2–37 tadpoles), respectively (</fo:inline>
        <fo:inline>Fig 2</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123221/graphics/journal.pone.0123221.g002"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We selected 24 out of 64 stumps to conduct parentage analyses. The selected stumps consisted of at least one sampled adult (attending male and/or feeding females) and 6 tadpoles each from early- and late-laid clutches (12 tadpoles total). We analyzed a total of 301 and 451 samples from early- and late-laid clutches, respectively.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Parentage analyses</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>COLONY deduced eight different types of parentage among overlapping offspring (</fo:inline>
        <fo:inline>Table 1</fo:inline>
        <fo:inline>). The most common parentage among overlapping offspring was partially the same father and different mothers (</fo:inline>
        <fo:inline font-style="italic">N</fo:inline>
        <fo:inline> = 8), followed by different parents (</fo:inline>
        <fo:inline font-style="italic">N</fo:inline>
        <fo:inline> = 7). The former is a case when a male frog was involved in matings that sired offspring in the early- and late-laid clutches, and at least one of the clutches was either synchronous polyandry or sequential multi-mating events that included other male frogs, which resulted in multiple paternity. In contrast, the latter is a rather simple case where two different pairs of frogs produced the two cohorts of offspring. The remaining types of parentage among overlapping offspring occurred at much lower frequency (</fo:inline>
        <fo:inline>Table 1</fo:inline>
        <fo:inline> and </fo:inline>
        <fo:inline>S1 Table</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block padding-left="9pt" border-left-style="solid" border-width="1.5pt">
        <fo:block padding-top="6pt" padding-bottom="6pt" font-size="9pt">
          <!-- caption -->
          <!-- title -->
          <fo:inline font-weight="bold">Parentage analyses of overlapping offspring of three consecutive years using COLONY.</fo:inline>
          <!-- paragraph -->
        </fo:block>
        <fo:table width="100%" table-layout="fixed" padding-top="6pt">
          <!-- columns -->
          <fo:table-column column-width="proportional-column-width(2)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <!-- header -->
          <fo:table-header line-height="1.5" font-size="8pt" text-align="left" font-weight="bold" border-color="gray" border-width="1.5pt" border-before-style="solid" border-after-style="solid">
            <fo:table-row>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Parentage</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2007</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2008</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2009</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>Subtotal</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-header>
          <fo:table-body font-size="8pt" line-height="1.5" text-align="left">
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Same tale an</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Same ♂ame tale ly same ♀</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Same ♂ameetale an ♀</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>3</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Partial same ♂arti ♀</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Partial same ♂ardifferent ♀</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>4</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>8</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Different ♂iffere ♀</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Different ♂ifferententaly ♀</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Different ♂iffe ♀</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>3</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>7</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0" border-color="gray" border-width="1pt" border-after-style="solid">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>4</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>6</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>14</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>24</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Based on results of parentage among overlapping clutches, we found that a total of 14 stumps were reused by the same male frogs but 10 stumps were not, and the proportion of stump use is statistically similar (G test, G = 0.670, </fo:inline>
        <fo:inline font-style="italic">P</fo:inline>
        <fo:inline> = 0.413). On the other hand, a total of 6 stumps were reused by the same female frogs but 18 stumps were not, and the proportion of stump use was statistically different (G test, G = 6.279, </fo:inline>
        <fo:inline font-style="italic">P</fo:inline>
        <fo:inline> = 0.012).</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Nest choice experiment</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We conducted 28 surveys, checking a total of 1862 cup pairs from April to August and found that 57 egg clutches were deposited during the study period (</fo:inline>
        <fo:inline>Table 2</fo:inline>
        <fo:inline>). Most egg clutches were found between May to July when the breeding activity peaked. A total of 34 and 23 egg clutches were laid in control and experimental bamboo cups, respectively, and the egg placement was independent from cup treatment (G test, G = 2.136, </fo:inline>
        <fo:inline font-style="italic">P</fo:inline>
        <fo:inline> = 0.144). During this three month period (May to July), 40, 31, and 52% of egg clutches were laid in the experimental cups in the respective months. Clutch size of eggs laid in control cups (45.3 </fo:inline>
        <fo:inline>+</fo:inline>
        <fo:inline> 18.4 eggs, </fo:inline>
        <fo:inline font-style="italic">N</fo:inline>
        <fo:inline> = 24) was not different from that of experimental cups (42.8 </fo:inline>
        <fo:inline>+</fo:inline>
        <fo:inline> 19.4 eggs. </fo:inline>
        <fo:inline font-style="italic">N</fo:inline>
        <fo:inline> = 17; Wilcoxon rank sum test, W = 229.5, </fo:inline>
        <fo:inline font-style="italic">P</fo:inline>
        <fo:inline> = 0.508).</fo:inline>
      </fo:block>
      <fo:block padding-left="9pt" border-left-style="solid" border-width="1.5pt">
        <fo:block padding-top="6pt" padding-bottom="6pt" font-size="9pt">
          <!-- caption -->
          <!-- title -->
          <fo:inline font-weight="bold">Survey effort and frequency of egg clutches laid in empty or tadpole-occupied cups.</fo:inline>
          <!-- paragraph -->
        </fo:block>
        <fo:table width="100%" table-layout="fixed" padding-top="6pt">
          <!-- columns -->
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(2)"/>
          <fo:table-column column-width="proportional-column-width(2)"/>
          <fo:table-column column-width="proportional-column-width(2)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <!-- header -->
          <fo:table-header line-height="1.5" font-size="8pt" text-align="left" font-weight="bold" border-color="gray" border-width="1.5pt" border-before-style="solid" border-after-style="solid">
            <fo:table-row>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Number of surveys per month</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Number of cup checked per survey</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Total number of cups checked per month</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Frequency of egg clutches laid in empty cups</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Frequency of egg clutches laid in tadpole-occupied cups</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>Subtotal egg clutches laid</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-header>
          <fo:table-body font-size="8pt" line-height="1.5" text-align="left">
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>April</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>2</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>34–56</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>90</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>May</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>6</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>47–77</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>364</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>6</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>4</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>10</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>June</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>7</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>71–78</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>526</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>15</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>7</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>22</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>July</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>9</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>62–77</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>608</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>11</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>12</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>23</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>August</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>4</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>65–70</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>274</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5" border-color="gray" border-width="1pt" border-after-style="solid">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>1862</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>34</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>23</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>57</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Discussion</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Multiple parentage of overlapping offspring</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Overlapping offspring is a reproductive situation with ecological and evolutionary implications. Attending male fishes [</fo:inline>
        <fo:inline>55</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>56</fo:inline>
        <fo:inline>] and frogs including </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> [</fo:inline>
        <fo:inline>5</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>6</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>8</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>57</fo:inline>
        <fo:inline>] obtain additional egg clutches in a nest, resulting in overlapping egg clutches. The occurrence of overlapping egg clutches in a nest has been proposed as a reproductive strategy used by attending males to compensate for loss of mating opportunities while attending eggs [</fo:inline>
        <fo:inline>5</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>8</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>58</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>60</fo:inline>
        <fo:inline>]. In </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline>, Cheng et al. [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>] used microsatellite DNA markers to analyze parentage and showed that most overlapping egg clutches in a stump were a result of sequential breeding (or polygyny) of the attending male, providing direct evidence to support earlier predictions that attending anuran males can sire and care for multiple egg clutches in a single egg deposition site.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In this study, </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> oviposited in tadpole-occupied stumps, resulting in overlapping offspring with different life stages; molecular and field evidence strongly suggest that the overlapping offspring in this study is not a continuum of overlapping egg clutches reported earlier [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>] and represents a different breeding phenomenon. Two lines of evidence support our contention: first, only 50% of overlapping offspring in this study were sired (completely or partially) by the same male frog compared to 93% of overlapping egg clutches in Cheng et al. [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>]; second, the earlier field evidence indicates that the prevalence of overlapping offspring with different life stages was about 36% [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>] compared to only 5% of overlapping egg clutches in Cheng et al. [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>]. In fact, overlapping offspring of different life stages in this study is more similar to the breeding strategy employed by pigeons [</fo:inline>
        <fo:inline>9</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>10</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>12</fo:inline>
        <fo:inline>] and fishes [</fo:inline>
        <fo:inline>3</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>The casual mechanism(s) of the varied patterns of parentage in overlapping offspring in this study are yet to be clarified and are expected to be more complicated than that of overlapping egg clutches reported earlier. We speculate that the varied parentage patterns can at least be associated with two ecological factors: a lack of nest defense and limited breeding resources. </fo:inline>
        <fo:inline font-style="italic">Kurixalus eiffingeri</fo:inline>
        <fo:inline> has a unique “sequential” form of parental care: male frogs guard eggs during embryonic period, and female frogs feed tadpoles alone during larval period; however, there is no evidence of nest or mate defense. Nest defense is a common parental behavior among insects [</fo:inline>
        <fo:inline>61</fo:inline>
        <fo:inline>], fishes [</fo:inline>
        <fo:inline>62</fo:inline>
        <fo:inline>], salamanders [</fo:inline>
        <fo:inline>63</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>65</fo:inline>
        <fo:inline>], frogs [</fo:inline>
        <fo:inline>66</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>67</fo:inline>
        <fo:inline>], and birds [</fo:inline>
        <fo:inline>68</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>70</fo:inline>
        <fo:inline>] and functions to protect valuable resources inside (e.g., mates, offspring, food, even the nest site itself [</fo:inline>
        <fo:inline>61</fo:inline>
        <fo:inline>]). In birds, the increased frequency of extra-pair mating or paternity has been associated with a lack of territorial or mate-guarding behavior [</fo:inline>
        <fo:inline>71</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>74</fo:inline>
        <fo:inline>]. This may also be true in </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> in that a lack of mate and nest defense opens possibilities for a male or female frog to mate with others and utilize the tadpole-occupied nests to breed again. Furthermore, the quality and availability of water pools in stumps vary in time and space [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>]. As the reproductive season progresses, more and more of the arboreal pools may already have been used for breeding by other individuals [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>]. The competition for stumps (empty or tadpole-occupied) for breeding is heavy, which inevitably results in the reuse of tadpole-occupied stumps. This likely leads to a diverse pattern of parentage in the overlapping offspring.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>The lack of nest defense during the larval period by both parents comes as a surprise in light of the importance of the nest site and brood inside. Hom et al. [</fo:inline>
        <fo:inline>75</fo:inline>
        <fo:inline>] proposed a dynamic optimization model to predict the fitness consequences of nest defense, and one of the predictions is that nest defense would be minimal or lacking for species with small body size. </fo:inline>
        <fo:inline font-style="italic">Kurixalus eiffingeri</fo:inline>
        <fo:inline> is a small-size frog (snout-vent length 2–3 cm) which is probably ineffective in protecting tadpoles from snake predation, the primary cause of tadpole mortality [</fo:inline>
        <fo:inline>76</fo:inline>
        <fo:inline>]. In addition, the lack of nest defense by males during the larval period is probably because the benefit of seeking other stumps to breed in right away outweighs the costs of breeding in the same nest [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>]. In females, a lack of nest defense may also relate to the feeding scheme. Each </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> tadpole consumes nearly 80 eggs to support its growth and development until metamorphosis [</fo:inline>
        <fo:inline>46</fo:inline>
        <fo:inline>], thus, egg provisioning to tadpoles is a time consuming process. As a result, female frogs are forced to spend a large amount of time away from the nest foraging and producing trophic eggs to meet the energetic demands of their tadpoles.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Oviposition strategies when reusing a nest</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Our findings that 58 and 25% of </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> males and females respectively reused the same stump to breed partly agreed with our prediction. Earlier studies have reported site fidelity in stream-dwelling frogs which probably are able to obtain sufficient ecological necessities such that moving away from a site is not required [</fo:inline>
        <fo:inline>77</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>79</fo:inline>
        <fo:inline>]. Results from studies in birds have demonstrated that nest site fidelity facilitates nesting success and offspring survival [</fo:inline>
        <fo:inline>21</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>31</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>80</fo:inline>
        <fo:inline>]. Accordingly, these beneficial effects should apply to </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> that reuses a previously-used stump. However, females reused nests at a much lower rate, suggesting a sexual difference in nest reuse. Earlier studies showed that the degree of nest-site fidelity can be influenced by previous experience [</fo:inline>
        <fo:inline>81</fo:inline>
        <fo:inline>], nest competition [</fo:inline>
        <fo:inline>82</fo:inline>
        <fo:inline>], age [</fo:inline>
        <fo:inline>31</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>80</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>83</fo:inline>
        <fo:inline>], site quality [</fo:inline>
        <fo:inline>24</fo:inline>
        <fo:inline>], and predation [</fo:inline>
        <fo:inline>26</fo:inline>
        <fo:inline>]. In this study, the lower rate of reusing the same nest by females can probably be explained by the high cost of tadpole feeding. Tadpoles are obligatorily oophagous, and each tadpole consumes about 80 trophic eggs during larval period (45–60 d) [</fo:inline>
        <fo:inline>46</fo:inline>
        <fo:inline>]. The feeding cost for a female to raise about 20 tadpoles (i.e., average tadpole number per stump) is extremely high [</fo:inline>
        <fo:inline>84</fo:inline>
        <fo:inline>] preventing her from breeding again while caring for the tadpoles. However, when tadpoles begin to metamorphose and leave the stumps, female frogs may breed again when tadpoles are few [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>], and the feeding cost is presumably lower.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>On the other hand, results of parentage analyses showed that about 42 and 75% of males and females respectively bred in tadpole-occupied stumps where tadpoles were genetically unrelated, which leads to the following question: why did frogs breed in the tadpole-occupied stumps of others? Lin, Lehtinen and Kam [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>] reported that reuse of nests by </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> occurred more commonly in the second half of breeding season. One explanation is that amplectant pairs may be forced to lay eggs in tadpole-occupied nests when most suitable breeding habitats are already used later in the breeding season (i.e., the saturated habitat hypothesis) [</fo:inline>
        <fo:inline>32</fo:inline>
        <fo:inline>]. These tadpole-occupied stumps are less favorable nests because larger tadpoles from early clutches outcompete smaller tadpoles from late clutches for trophic eggs that may result in tadpole starvation, retarded growth, and mortality of the latter [</fo:inline>
        <fo:inline>39</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>45</fo:inline>
        <fo:inline>]. In theory, amplectant pairs would avoid tadpole-occupied stumps to minimize the detrimental impact of residing tadpoles to their offspring. However, in the nest choice experiment, when we presented identical stumps, without or with tadpoles, 40% of frogs still chose tadpole-occupied stumps, suggesting that the habitat saturation hypothesis does not fully explain why frogs used the tadpole-occupied stumps. One explanation is that females are unable to detect the tadpoles in the stumps, and the chance of stump use is random. This possibility, however, is unlikely because adults are selective in oviposition sites [</fo:inline>
        <fo:inline>46</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>85</fo:inline>
        <fo:inline>], and females purposely deposited egg clutches in stumps with fewer tadpoles [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>]. The alternative explanation for the re-use of stumps is that even though the quality of tadpole-occupied stumps is discounted due to inter-clutch tadpole competition, they are still as good as, if not better than, the remaining unoccupied stumps [</fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>What are the possible benefits of reusing tadpole-occupied stumps? First, the presence of early-clutch tadpoles may serve as a cue for the high quality of the stumps, such as the availability and persistence of the water resource, which is particularly critical for offspring living in container habitats like tree holes and stumps which are prone to desiccation [</fo:inline>
        <fo:inline>24</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>41</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>43</fo:inline>
        <fo:inline>]. Similar findings of conspecific attraction have been reported in vertebrates and invertebrates [</fo:inline>
        <fo:inline>22</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>24</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>53</fo:inline>
        <fo:inline>]. When two cohorts of offspring with different developmental stages coexist, the negative effect of early-clutch tadpoles on late-clutch tadpoles is unavoidable[</fo:inline>
        <fo:inline>45</fo:inline>
        <fo:inline>]. However, </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> reuse stumps when residing tadpoles are usually at the middle or late developmental stages and low in number [</fo:inline>
        <fo:inline>39</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>40</fo:inline>
        <fo:inline>], the negative effects of early-clutch tadpoles would be somewhat alleviated because they would soon metamorphose, minimizing inter-clutch competition [</fo:inline>
        <fo:inline>45</fo:inline>
        <fo:inline>]. Second, the coexistence of two cohorts of tadpoles reduces the probability of smaller tadpoles (i.e., late-laid clutches) being eaten not only because of the attack abatement effect but also because they are less conspicuous due to small size when compared to larger tadpoles (i.e., early-laid clutch) [</fo:inline>
        <fo:inline>32</fo:inline>
        <fo:inline>]. Third, coexisting tadpoles in stumps could potentially be fed by two females which reduces the probability of catastrophic nest mortality. Earlier studies on </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> have reported nest failure (ca.30%) which is due to nest abandonment by females and/or death of female frogs, mostly by snake predation [</fo:inline>
        <fo:inline>45</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>84</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>86</fo:inline>
        <fo:inline>]. Since females cannot discriminate kin from non-kin [</fo:inline>
        <fo:inline>37</fo:inline>
        <fo:inline>], if a nest is used by two females (i.e., multiple feeders effect), the tadpoles would still be fed if one of the mothers deserts the nest or is eaten. A similar scenario was reported by Harris et al. [</fo:inline>
        <fo:inline>87</fo:inline>
        <fo:inline>] in that joint nests by </fo:inline>
        <fo:inline font-style="italic">H</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">scutatum</fo:inline>
        <fo:inline> were deserted less often compared to solitary nests, and the probability of catastrophic mortality was accordingly reduced.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Conclusions</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In conclusion, integrating parentage into the discussion of nest site selection can lead to new insights into the reproductive strategies and sexual selection of animals. This is particularly true in the studies of reproductive behavior of externally fertilizing animals such as anuran amphibians and fishes because many species have complex reproductive behavior that cannot easily be detected in the field [</fo:inline>
        <fo:inline>13</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>16</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>88</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>89</fo:inline>
        <fo:inline>]. In this study, </fo:inline>
        <fo:inline font-style="italic">K</fo:inline>
        <fo:inline>. </fo:inline>
        <fo:inline font-style="italic">eiffingeri</fo:inline>
        <fo:inline> may oviposit in egg- or tadpole-occupied stumps, both resulting in overlapping offspring. However, parentage data and field evidence suggest that oviposition in stumps occupied by either eggs or tadpoles should be seen as two different reproductive phenomena, most likely with different causal mechanisms. Oviposition in egg-occupied stumps is mostly initiated by attending males which probably attempt to compensate for the loss of reproductive opportunities while attending eggs. On the other hand, based on the results of the nest choice experiment in the field, the occurrence of oviposition in tadpole-occupied stumps cannot be fully explained by the habitat saturation hypothesis. We propose several hypotheses to explain the potential adaptive values of overlapping offspring. However, additional studies are necessary to fully understand the patterns revealed by this study.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Summaries of stump use, clutch size development stage, sample size used, and parentage of overlapping offspring deduced from the COLONY program.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>(PDF)</fo:inline>
      </fo:block>
      <!-- back -->
      <fo:block margin-top="10pt" font-size="12pt" font-weight="bold">
        <fo:inline>References</fo:inline>
      </fo:block>
      <fo:block margin-top="8pt" text-align="justify" font-size="9pt" font-family="serif">
        <fo:list-block provisional-distance-between-starts="6mm" end-indent="12mm" start-indent="12mm">
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>1. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>A Manica, RA Johnstone</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>The evolution of paternal care with overlapping broods</fo:inline>
                <fo:inline>Am Nat</fo:inline>
                <fo:inline>164:</fo:inline>
                <fo:inline>517-530</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>2. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JS Edgerly, M McFarland, P Morgan, T Livdahl</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>A seasonal shift in egg-laying behaviour in response to cues of future competition in a treehole mosquito</fo:inline>
                <fo:inline>J Anim Ecol</fo:inline>
                <fo:inline>67:</fo:inline>
                <fo:inline>805-818</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>3. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>J Travis, JA Farr, S Henrich, RT Cheong</fo:inline>
                <fo:inline>(1987)</fo:inline>
                <fo:inline>Heterandria Formosa</fo:inline>
                <fo:inline>Ecology</fo:inline>
                <fo:inline>68:</fo:inline>
                <fo:inline>611-623</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>4. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>RJ Wooton</fo:inline>
                <fo:inline>(1984)</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>5. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>PA Burrowes</fo:inline>
                <fo:inline>(2000)</fo:inline>
                <fo:inline>Eleutherodactylus cooki</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>56:</fo:inline>
                <fo:inline>375-386</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>6. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>FA Junca</fo:inline>
                <fo:inline>(1996)</fo:inline>
                <fo:inline>Colostethus stepheni</fo:inline>
                <fo:inline>J Herpetol</fo:inline>
                <fo:inline>30:</fo:inline>
                <fo:inline>292-294</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>7. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>PJ Murphy</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Context-dependent reproductive site choice in a neotrophic frog</fo:inline>
                <fo:inline>Behav Ecol</fo:inline>
                <fo:inline>14:</fo:inline>
                <fo:inline>626-633</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>8. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>DS Woodruff</fo:inline>
                <fo:inline>(1977)</fo:inline>
                <fo:inline> (Anura: Leptodactylidae)</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>33:</fo:inline>
                <fo:inline>296-303</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>9. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>N Burley</fo:inline>
                <fo:inline>(1980)</fo:inline>
                <fo:inline>Clutch overlap and clutch size: alternative and complementary reproductive tactics</fo:inline>
                <fo:inline>Am Nat</fo:inline>
                <fo:inline>115:</fo:inline>
                <fo:inline>223-246</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>10. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>T Hetmanski, E Wolk</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline> F.Urbana(GM.)</fo:inline>
                <fo:inline>Pol J Ecol</fo:inline>
                <fo:inline>53:</fo:inline>
                <fo:inline>523-534</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>11. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>PE Lowther</fo:inline>
                <fo:inline>(1979)</fo:inline>
                <fo:inline>Overlap of house sparrow broods in the same nest</fo:inline>
                <fo:inline>Bird-Banding</fo:inline>
                <fo:inline>50:</fo:inline>
                <fo:inline>160-162</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>12. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>D Westmoreland, LB Best, DE Blockstein</fo:inline>
                <fo:inline>(1986)</fo:inline>
                <fo:inline>Multiple brooding as a reproductive strategy: time-conserving adaptations in mourning doves</fo:inline>
                <fo:inline>Auk</fo:inline>
                <fo:inline>103:</fo:inline>
                <fo:inline>196-203</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>13. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JC Avise, AG Jones, D Walker, JA DeWoody, B Dakin, A Fiumera</fo:inline>
                <fo:inline>(2002)</fo:inline>
                <fo:inline>Genetic mating systems and reproductive natural histories of fishes: Lessons for ecology and evolution</fo:inline>
                <fo:inline>Annu Rev Genet</fo:inline>
                <fo:inline>36:</fo:inline>
                <fo:inline>19-45</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>14. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>M Petrie, B Kempenaers</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>Extra-pair paternity in birds: explaining variation between species and population</fo:inline>
                <fo:inline>Trends Ecol Evol</fo:inline>
                <fo:inline>13:</fo:inline>
                <fo:inline>52-58</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>15. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JD Roberts, PG Byrne, H. J. Brockmann, T. J. Roper, M. Naguib, J. C. Mitani, L. W. Simmons</fo:inline>
                <fo:inline>(2011)</fo:inline>
                <fo:inline>Adv Study Behav</fo:inline>
                <fo:inline>1-53</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>16. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JA DeWoody, JC Avise</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline>Genetic perspectives on the natural history of fish mating systems</fo:inline>
                <fo:inline>J Hered</fo:inline>
                <fo:inline>92:</fo:inline>
                <fo:inline>167-172</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>17. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>GL Breitenbach</fo:inline>
                <fo:inline>(1982)</fo:inline>
                <fo:inline>Hemidactylium scutatum</fo:inline>
                <fo:inline>J Herpetol</fo:inline>
                <fo:inline>16:</fo:inline>
                <fo:inline>341-346</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>18. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>CA Carreno, RN Harris</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline> (Caudata: Plethodontidae)</fo:inline>
                <fo:inline>Copeia</fo:inline>
                <fo:inline>1998:</fo:inline>
                <fo:inline>183-189</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>19. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>RN Harris, DE Gill</fo:inline>
                <fo:inline>(1980)</fo:inline>
                <fo:inline>Hemidactylium scutatum</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>36:</fo:inline>
                <fo:inline>141-144</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>20. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JP Hoover</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Decision rules for site fidelity in a migratory bird, the prothonotary warbler</fo:inline>
                <fo:inline>Ecology</fo:inline>
                <fo:inline>84:</fo:inline>
                <fo:inline>416-430</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>21. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>P Vergara, JI Aguirre, JA Fargallo, JA Davila</fo:inline>
                <fo:inline>(2006)</fo:inline>
                <fo:inline>Ciconia ciconia</fo:inline>
                <fo:inline>Ibis</fo:inline>
                <fo:inline>148:</fo:inline>
                <fo:inline>672-677</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>22. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>B Doligez, E Danchin, J Clobert</fo:inline>
                <fo:inline>(2002)</fo:inline>
                <fo:inline>Public information and breeding habitat selection in a wild bird population</fo:inline>
                <fo:inline>Science</fo:inline>
                <fo:inline>297:</fo:inline>
                <fo:inline>1168-1170</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>23. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>A Mokany, R Shine</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Oviposition site selection by mosquitoes is affected cues from conspecific larvae and anuran tadpoles</fo:inline>
                <fo:inline>Aust Ecol</fo:inline>
                <fo:inline>28:</fo:inline>
                <fo:inline>33-37</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>24. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>VHW Rudolf, M Rodel</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline>Oviposition site selection in a complex and variable environment: the role of habitat quality and conspecific cues</fo:inline>
                <fo:inline>Oecologia</fo:inline>
                <fo:inline>142:</fo:inline>
                <fo:inline>316-325</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>25. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>LM Schulte, D Roedder, R Schulte, S Loetters</fo:inline>
                <fo:inline>(2010)</fo:inline>
                <fo:inline> species (Dendrobatidae): does height play a role?</fo:inline>
                <fo:inline>Salamandra</fo:inline>
                <fo:inline>46:</fo:inline>
                <fo:inline>180-184</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>26. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>J Bried, D Pontler, P Jouventin</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Mate fidelity in monogamous birds: a re-examination of the Procellariiformes</fo:inline>
                <fo:inline>Anim Behav</fo:inline>
                <fo:inline>65:</fo:inline>
                <fo:inline>235-246</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>27. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>GA Sonerud, PE Fjeld</fo:inline>
                <fo:inline>(1987)</fo:inline>
                <fo:inline>Long-term memory in egg predators: experiment with a Hooded Crow</fo:inline>
                <fo:inline>Ornis Scand</fo:inline>
                <fo:inline>18:</fo:inline>
                <fo:inline>323-324</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>28. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>F Cezilly, F Dubois, M Pagel</fo:inline>
                <fo:inline>(2000)</fo:inline>
                <fo:inline>Is mate fidelity related to site fidelity? A comparative analysis in Ciconiiforms</fo:inline>
                <fo:inline>Anim Behav</fo:inline>
                <fo:inline>59:</fo:inline>
                <fo:inline>1143-1152</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>29. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>D Heg, LW Bruinzeel, BJ Ens</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Haematopus ostralegus</fo:inline>
                <fo:inline>Anim Behav</fo:inline>
                <fo:inline>66:</fo:inline>
                <fo:inline>175-184</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>30. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>RMR Barclay</fo:inline>
                <fo:inline>(1988)</fo:inline>
                <fo:inline>)</fo:inline>
                <fo:inline>The Auk</fo:inline>
                <fo:inline>105:</fo:inline>
                <fo:inline>53-60</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>31. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>M Johnson, J Walters</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>)</fo:inline>
                <fo:inline>The Auk</fo:inline>
                <fo:inline>125:</fo:inline>
                <fo:inline>76-86</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>32. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JS Doody, S Freedberg, JS Keogh</fo:inline>
                <fo:inline>(2009)</fo:inline>
                <fo:inline>Communal egg-laying in reptiles and amphibians: evolutionary patterns and hypotheses</fo:inline>
                <fo:inline>Q Rev Biol</fo:inline>
                <fo:inline>84:</fo:inline>
                <fo:inline>229-252</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>33. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JR Krebs, NB Davies</fo:inline>
                <fo:inline>(1993)</fo:inline>
                <fo:inline>An Introduction to Behavioural Ecology</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>34. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-C Kam, C-F Yen, C-L Hsu</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>, Rhacophoridae): importance of egg distribution in bamboo stumps</fo:inline>
                <fo:inline>Physiol Zool</fo:inline>
                <fo:inline>71:</fo:inline>
                <fo:inline>534-540</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>35. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-H Chen, H-T Yu, Y-C Kam</fo:inline>
                <fo:inline>(2007)</fo:inline>
                <fo:inline> (Anura: Rhacophoridae) from Taiwan</fo:inline>
                <fo:inline>Zool Sci (Tokyo)</fo:inline>
                <fo:inline>24:</fo:inline>
                <fo:inline>234-440</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>36. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>H Ueda</fo:inline>
                <fo:inline>(1986)</fo:inline>
                <fo:inline> (Boettger)</fo:inline>
                <fo:inline>Sci Rep Lab Amphib Biol Hiroshima Univ</fo:inline>
                <fo:inline>8:</fo:inline>
                <fo:inline>109-116</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>37. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-C Kam, Y-H Chen, T-C Chen, I-R Tsai</fo:inline>
                <fo:inline>(2000)</fo:inline>
                <fo:inline> (Anura: Rhacophoridae) from Taiwan</fo:inline>
                <fo:inline>Behaviour</fo:inline>
                <fo:inline>137:</fo:inline>
                <fo:inline>137-151</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>38. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>W-C Cheng, Y-H Chen, H-T Yu, JD Roberts, Y-C Kam</fo:inline>
                <fo:inline>(2013)</fo:inline>
                <fo:inline>Sequential polygyny during egg attendance is rare in a tree frog and does not increase male fitness</fo:inline>
                <fo:inline>Ethology</fo:inline>
                <fo:inline>119:</fo:inline>
                <fo:inline>1-10</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>39. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-C Kam, Y-H Chen, Z-S Chuang, T-S Huang</fo:inline>
                <fo:inline>(1997)</fo:inline>
                <fo:inline> (Rhacophoridae)</fo:inline>
                <fo:inline>Zool Stud</fo:inline>
                <fo:inline>30:</fo:inline>
                <fo:inline>186-193</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>40. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-S Lin, RM Lehtinen, Y-C Kam</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>Time- and context-dependent oviposition site selection of a phytotelm-breeding frog in relation to habitat characteristics and conspecific cues</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>64:</fo:inline>
                <fo:inline>413-421</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>41. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>RL Kitching</fo:inline>
                <fo:inline>(2000)</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>42. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>RM Lehtinen, MJ Lanoo, RJ Wassersug, R. M. Lehtinen</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Ecology and Evolution of Phytotelm Breeding Anurans</fo:inline>
                <fo:inline>1-9</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>43. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>DS Srivastava, J Kolasa, J Bengtsson, A Gonzalez, SP Lawler, TE Miller</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Are natural microcosms useful model systems for ecology?</fo:inline>
                <fo:inline>Trends Ecol Evol</fo:inline>
                <fo:inline>19:</fo:inline>
                <fo:inline>379-384</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>44. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>MJ Lannoo, DS Townsend, RJ Wassersug</fo:inline>
                <fo:inline>(1987)</fo:inline>
                <fo:inline>Osteopilus brunneus</fo:inline>
                <fo:inline>Fieldiana Zool</fo:inline>
                <fo:inline>38:</fo:inline>
                <fo:inline>1-31</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>45. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-H Chen, Y-J Su, Y-S Lin, Y-C Kam</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline> (Anura: Rhacophoridae)</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>57:</fo:inline>
                <fo:inline>438-448</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>46. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-C Kam, Z-S Chuang, C-F Yen</fo:inline>
                <fo:inline>(1996)</fo:inline>
                <fo:inline> (Rhacophoridae), from Taiwan</fo:inline>
                <fo:inline>J Herpetol</fo:inline>
                <fo:inline>30:</fo:inline>
                <fo:inline>52-59</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>47. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>M-F Liang, C-H Huang, Y-C Kam</fo:inline>
                <fo:inline>(2002)</fo:inline>
                <fo:inline>) tadpoles from Taiwan</fo:inline>
                <fo:inline>J Zool (Lond)</fo:inline>
                <fo:inline>256:</fo:inline>
                <fo:inline>207-213</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>48. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-H Chen, W-C Cheng, H-T Yu, Y-C Kam</fo:inline>
                <fo:inline>(2011)</fo:inline>
                <fo:inline>Genetic relationship between offspring and guardian adults of a rhacophorid frog and its care effort in response to paternal share</fo:inline>
                <fo:inline>Behav Ecol Sociobiol</fo:inline>
                <fo:inline>65:</fo:inline>
                <fo:inline>2329-2339</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>49. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>ST Kalinowski, ML Taper, TC Marshall</fo:inline>
                <fo:inline>(2007)</fo:inline>
                <fo:inline>Revising how the computer program CERVUS accommodates genotyping error increases success in paternity assignment</fo:inline>
                <fo:inline>Mol Ecol</fo:inline>
                <fo:inline>16:</fo:inline>
                <fo:inline>1099-1106</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>50. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>TC Marshall, J Slate, LE Kruuk, JM Pemberton</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>Statistical confidence for likelihood-based paternity inference in natural populations</fo:inline>
                <fo:inline>Mol Ecol</fo:inline>
                <fo:inline>7:</fo:inline>
                <fo:inline>639-655</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>51. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>J Wang</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Sibship reconstruction from genetic data with typing errors</fo:inline>
                <fo:inline>Genetics</fo:inline>
                <fo:inline>166:</fo:inline>
                <fo:inline>1963-1979</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>52. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>(2001)</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>53. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>LM Schulte, S Loetters</fo:inline>
                <fo:inline>(2014)</fo:inline>
                <fo:inline>A danger foreseen is a danger avoided: how chemical cues of different tadpoles inluence parential decisions of a Neotropical poison frog</fo:inline>
                <fo:inline>Anim Cogn</fo:inline>
                <fo:inline>17:</fo:inline>
                <fo:inline>267-275</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>54. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>MA McCarthy, KM Parris</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Clarifying the effect of toe clipping on frogs with Bayesian statistics</fo:inline>
                <fo:inline>J Appl Ecol</fo:inline>
                <fo:inline>41:</fo:inline>
                <fo:inline>780-786</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>55. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>C Smith, RJ Wootton</fo:inline>
                <fo:inline>(1995)</fo:inline>
                <fo:inline>The costs of parental care in teleost fishes</fo:inline>
                <fo:inline>Rev Fish Biol Fish</fo:inline>
                <fo:inline>5:</fo:inline>
                <fo:inline>7-22</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>56. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>RJ Wootton</fo:inline>
                <fo:inline>(1984)</fo:inline>
                <fo:inline>A Functional Biology of Sticklebacks</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>57. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>EA Vockenhuber, W Hodl, U Karpfen</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline> (Anura: Centrolenidae) at the tropical stream Quebrada Negra (La Gamba, Costa Rica)</fo:inline>
                <fo:inline>Stapfia</fo:inline>
                <fo:inline>88:</fo:inline>
                <fo:inline>335-348</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>58. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>TH Clutton-Brock</fo:inline>
                <fo:inline>(1991)</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>59. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>M Crump, H. Heatwole, B. K. Sullivan</fo:inline>
                <fo:inline>(1995)</fo:inline>
                <fo:inline>Amphibian biology Vol 2 Social behaviour</fo:inline>
                <fo:inline>518-567</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>60. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>MR Gross, RC Sargent</fo:inline>
                <fo:inline>(1985)</fo:inline>
                <fo:inline>The evolution of male and female parental care in fishes</fo:inline>
                <fo:inline>Am Zool</fo:inline>
                <fo:inline>25:</fo:inline>
                <fo:inline>807-822</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>61. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>C Gruter, MH Karcher, FLW Ratnieks</fo:inline>
                <fo:inline>(2011)</fo:inline>
                <fo:inline> (latreille) (Hymenoptera), with two distinct types of entrance guards</fo:inline>
                <fo:inline>Neotrop Entomol</fo:inline>
                <fo:inline>40:</fo:inline>
                <fo:inline>55-61</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>62. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JH Knouft, LM Page</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>)</fo:inline>
                <fo:inline>Copeia</fo:inline>
                <fo:inline>2004:</fo:inline>
                <fo:inline>915-918</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>63. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>MD Bachmann</fo:inline>
                <fo:inline>(1984)</fo:inline>
                <fo:inline>)</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>40:</fo:inline>
                <fo:inline>436-443</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>64. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>DC Forester</fo:inline>
                <fo:inline>(1979)</fo:inline>
                <fo:inline> Cope (Urodela: Plethodontidae)</fo:inline>
                <fo:inline>Copeia</fo:inline>
                <fo:inline>1979:</fo:inline>
                <fo:inline>332-341</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>65. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>DC Forester</fo:inline>
                <fo:inline>(1983)</fo:inline>
                <fo:inline>) and its influence on aggression toward conspecifics</fo:inline>
                <fo:inline>Copeia</fo:inline>
                <fo:inline>1983:</fo:inline>
                <fo:inline>1098-1101</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>66. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>KD Wells</fo:inline>
                <fo:inline>(1977)</fo:inline>
                <fo:inline>Territoriality and male mating success in the green frog (Rana clamitans)</fo:inline>
                <fo:inline>Ecology</fo:inline>
                <fo:inline>58:</fo:inline>
                <fo:inline>750-762</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>67. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>KD Wells</fo:inline>
                <fo:inline>(2007)</fo:inline>
                <fo:inline>The Ecology and Behavior of Amphibians</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>68. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>D Campobello, SG Sealy</fo:inline>
                <fo:inline>(2011)</fo:inline>
                <fo:inline>Use of social over personal information enhances nest defense against avian brood parasitism</fo:inline>
                <fo:inline>Behav Ecol</fo:inline>
                <fo:inline>22:</fo:inline>
                <fo:inline>422-428</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>69. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>LJ Redmond, MJ Murphy, AC Dolan, K Sexton</fo:inline>
                <fo:inline>(2009)</fo:inline>
                <fo:inline>Parental investment theory and nest defense by eastern kingbirds</fo:inline>
                <fo:inline>Wilson J Ornithol</fo:inline>
                <fo:inline>121:</fo:inline>
                <fo:inline>1-11</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>70. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>D Westmoreland</fo:inline>
                <fo:inline>(1989)</fo:inline>
                <fo:inline>Offspring age and nest defence in mourning doves: a test of two hypotheses</fo:inline>
                <fo:inline>Anim Behav</fo:inline>
                <fo:inline>38:</fo:inline>
                <fo:inline>1062-1066</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>71. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JG Ewen, DP Armstrong, B Ebert, LH Hansen</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Notiomystis cincta</fo:inline>
                <fo:inline>N Z J Ecol</fo:inline>
                <fo:inline>28:</fo:inline>
                <fo:inline>233-240</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>72. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>EA Macdougall-Shackleton, RJ Robertson, PT Boag</fo:inline>
                <fo:inline>(1996)</fo:inline>
                <fo:inline>Temporary male removal increases extra-pair paternity in eastern bluebirds</fo:inline>
                <fo:inline>Anim Behav</fo:inline>
                <fo:inline>52:</fo:inline>
                <fo:inline>1177-1183</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>73. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>AP Moller</fo:inline>
                <fo:inline>(1990)</fo:inline>
                <fo:inline>Changes in the size of avian breeding territories in relation to the nesting cycle</fo:inline>
                <fo:inline>Anim Behav</fo:inline>
                <fo:inline>40:</fo:inline>
                <fo:inline>1070-1079</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>74. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>KMC Rowe, PJ Weatherhead</fo:inline>
                <fo:inline>(2007)</fo:inline>
                <fo:inline>Social and ecological factors affecting paternity allocation in American robins with overlapping broods</fo:inline>
                <fo:inline>Behav Ecol Sociobiol</fo:inline>
                <fo:inline>61:</fo:inline>
                <fo:inline>1283-1291</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>75. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>CL Hom, NW Willits, CW Clark</fo:inline>
                <fo:inline>(1990)</fo:inline>
                <fo:inline>Fitness consequences of nest defense in Plethodontid salamanders: predictions of a dynamic optimization model</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>46:</fo:inline>
                <fo:inline>304-319</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>76. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>KS Shang, YJ Yang, PH Li</fo:inline>
                <fo:inline>(2009)</fo:inline>
                <fo:inline>Field Guide to Amphibians and Reptiles in Taiwan</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>77. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>CH Daugherty, AL Sheldon</fo:inline>
                <fo:inline>(1982)</fo:inline>
                <fo:inline>Ascaphus truei</fo:inline>
                <fo:inline>Herpetologica</fo:inline>
                <fo:inline>38:</fo:inline>
                <fo:inline>468-474</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>78. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-C Kam, T-C Chen</fo:inline>
                <fo:inline>(2000)</fo:inline>
                <fo:inline>) in a Subtropical Forest of Guandaushi, Taiwan</fo:inline>
                <fo:inline>Zool Stud</fo:inline>
                <fo:inline>39:</fo:inline>
                <fo:inline>67-76</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>79. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>C Tessier, D Slaven, DM Green</fo:inline>
                <fo:inline>(1991)</fo:inline>
                <fo:inline>, in a New Zealand mountain stream</fo:inline>
                <fo:inline>J Herpetol</fo:inline>
                <fo:inline>25:</fo:inline>
                <fo:inline>213-214</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>80. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>E Johannesen, L Perriman, H Steen</fo:inline>
                <fo:inline>(2002)</fo:inline>
                <fo:inline>) in Otago, Zew Zealand</fo:inline>
                <fo:inline>Emu</fo:inline>
                <fo:inline>102:</fo:inline>
                <fo:inline>241-247</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>81. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>LC Naves, JY Monnat, E Cam</fo:inline>
                <fo:inline>(2006)</fo:inline>
                <fo:inline>Breeding performance, mate fidelity, and nest site fidelity in a long-lived seabird: behaving against the current</fo:inline>
                <fo:inline>Oikos</fo:inline>
                <fo:inline>115:</fo:inline>
                <fo:inline>263-276</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>82. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>H Dow, S Fredga</fo:inline>
                <fo:inline>(1983)</fo:inline>
                <fo:inline>Bucephala clamgula</fo:inline>
                <fo:inline>J Anim Ecol</fo:inline>
                <fo:inline>52:</fo:inline>
                <fo:inline>681-695</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>83. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>JM Reid, EM Bignal, S Bignal, DI MacCrackens, P Monaghan</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>: patterns and processes in a natural population</fo:inline>
                <fo:inline>J Anim Ecol</fo:inline>
                <fo:inline>72:</fo:inline>
                <fo:inline>765-776</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>84. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-C Kam, C-F Lin, Y-S Lin, Y-F Tsai</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline> (Anura: Rhacophoridae): importance of maternal brood care</fo:inline>
                <fo:inline>Herptologica</fo:inline>
                <fo:inline>54:</fo:inline>
                <fo:inline>425-433</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>85. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>Y-S Lin, Y-C Kam</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline> (Rhacophoridae), in a bamboo forest</fo:inline>
                <fo:inline>Zool Stud</fo:inline>
                <fo:inline>42:</fo:inline>
                <fo:inline>129-137</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>86. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>C-T Chiu, Y-C Kam</fo:inline>
                <fo:inline>(2006)</fo:inline>
                <fo:inline>: Rhacophoridae) after nest displacement: implications for maternal care and nest homing</fo:inline>
                <fo:inline>Behaviour</fo:inline>
                <fo:inline>143:</fo:inline>
                <fo:inline>123-139</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>87. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>RN Harris, WW Hames, IT Knight, CA Carreno, TJ Vess</fo:inline>
                <fo:inline>(1995)</fo:inline>
                <fo:inline> (Caudata: Plethodontidae): the effects of population density</fo:inline>
                <fo:inline>Anim Behav</fo:inline>
                <fo:inline>50:</fo:inline>
                <fo:inline>1309-1316</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>88. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>A Laurila, P Seppa</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>): genetic evidence from tadpole kin groups</fo:inline>
                <fo:inline>Biol J Linn Soc</fo:inline>
                <fo:inline>63:</fo:inline>
                <fo:inline>221-232</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
          <fo:list-item>
            <fo:list-item-label end-indent="label-end()">
              <fo:block>
                <fo:inline>89. </fo:inline>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block>
                <fo:inline>DR Vieites, S Nieto-Roman, M Barluenga, A Palanca, M Vences, A Meyer</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Post-mating clutch piracy in an amphibian</fo:inline>
                <fo:inline>Nature</fo:inline>
                <fo:inline>431:</fo:inline>
                <fo:inline>305-308</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
        </fo:list-block>
      </fo:block>
      <fo:block font-family="Gentium" font-weight="normal" font-style="normal" font-size="9pt" line-height="2" text-indent="34pt">
        <fo:inline>This study was supported by a National Science Council grant to YCK (NSC 101-2621-B-029-002-MY3). We thank the staff of the Experimental Forest of the National Taiwan University at Chitou for providing accommodations. We also thank I-S Lin and Y-C Huang for field assistance.</fo:inline>
      </fo:block>
    </fo:flow>
  </fo:page-sequence>
</fo:root>
