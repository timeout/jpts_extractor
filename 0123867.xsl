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
        <fo:inline>Chemokine Transfer by Liver Sinusoidal Endothelial Cells Contributes to the Recruitment of CD4</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
        <fo:inline> T Cells into the Murine Liver</fo:inline>
      </fo:block>
      <!-- authors -->
      <fo:block font-family="DroidSans" text-align="start" line-height="1.5" font-weight="bold" font-size="10pt" padding-top="12pt">
        <fo:inline>Katrin Neumann</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1, 2, 3</fo:inline>
        <fo:inline>, Ulrike Erben</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1, 2</fo:inline>
        <fo:inline>, Nils Kruse</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Katja Wechsung</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Michael Schumann</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Katja Klugewitz</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1</fo:inline>
        <fo:inline>, Alexander Scheffold</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">3, 4</fo:inline>
        <fo:inline>, Anja A. Kühl</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">1, 2</fo:inline>
      </fo:block>
      <!-- affiliation(s) -->
      <fo:block font-family="DroidSans" text-align="justify" font-size="8pt" padding-top="6pt" padding-bottom="6pt">
        <fo:inline font-weight="bold">1</fo:inline>
        <fo:inline>Department of Medicine I for Gastroenterology, Infectious Diseases and Rheumatology, Campus Benjamin Franklin, Charité—Universitätsmedizin Berlin, Berlin, Germany</fo:inline>
        <fo:inline font-weight="bold">2</fo:inline>
        <fo:inline>Research Center Immunosciences, Charité—Universitätsmedizin, Berlin, Germany</fo:inline>
        <fo:inline font-weight="bold">3</fo:inline>
        <fo:inline>Department of Cellular Immunology, Clinic for Rheumatology and Clinical Immunology, Charité—Universitätsmedizin, Berlin, Germany</fo:inline>
        <fo:inline font-weight="bold">4</fo:inline>
        <fo:inline>German Rheumatism Research Centre Berlin, an Institute of the Leibniz-Association, Berlin, Germany</fo:inline>
      </fo:block>
      <!-- preface -->
      <fo:block border-style="solid" border-width="1.5pt">
        <!-- abstract -->
        <fo:block background-color="#DEDEDE" margin="6pt" padding="8pt">
          <fo:block font-family="DroidSans" font-weight="bold" font-size="12pt">Abstract</fo:block>
          <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
            <fo:inline>Leukocyte adhesion and transmigration are central features governing immune surveillance and inflammatory reactions in body tissues. Within the liver sinusoids, chemokines initiate the first crucial step of T-cell migration into the hepatic tissue. We studied molecular mechanisms involved in endothelial chemokine supply during hepatic immune surveillance and liver inflammation and their impact on the recruitment of CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T cells into the liver. In the murine model of Concanavalin A-induced T cell-mediated hepatitis, we showed that hepatic expression of the inflammatory CXC chemokine ligands (CXCL)9 and CXCL10 strongly increased whereas homeostatic CXCL12 significantly decreased. Consistently, CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T cells expressing the CXC chemokine receptor (CXCR)3 accumulated within the inflamed liver tissue. In histology, CXCL9 was associated with liver sinusoidal endothelial cells (LSEC) which represent the first contact site for T-cell immigration into the liver. LSEC actively transferred basolaterally internalized CXCL12, CXCL9 and CXCL10 via clathrin-coated vesicles to CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T cells leading to enhanced transmigration of CXCR4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> total CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T cells and CXCR3</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> effector/memory CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T cells, respectively </fo:inline>
            <fo:inline font-style="italic">in vitro</fo:inline>
            <fo:inline>. LSEC-expressed CXCR4 mediated CXCL12 transport and blockage of endothelial CXCR4 inhibited CXCL12-dependent CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T-cell transmigration. In contrast, CXCR3 was not involved in the endothelial transport of its ligands CXCL9 and CXCL10. The clathrin-specific inhibitor chlorpromazine blocked endothelial chemokine internalization and CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T-cell transmigration </fo:inline>
            <fo:inline font-style="italic">in vitro</fo:inline>
            <fo:inline> as well as migration of CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T cells into the inflamed liver </fo:inline>
            <fo:inline font-style="italic">in vivo</fo:inline>
            <fo:inline>. Moreover, hepatic accumulation of CXCR3</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T cells during T cell-mediated hepatitis was strongly reduced after administration of chlorpromazine. These data demonstrate that LSEC actively provide perivascularly expressed homeostatic and inflammatory chemokines by CXCR4- and clathrin-dependent intracellular transport mechanisms thereby contributing to the hepatic recruitment of CD4</fo:inline>
            <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
            <fo:inline> T-cell populations during immune surveillance and liver inflammation.</fo:inline>
          </fo:block>
        </fo:block>
        <fo:block font-family="DroidSans" margin-left="6pt" margin-right="6pt" font-size="8pt">
          <!-- article meta information -->
          <fo:block padding="4pt">
            <fo:inline font-weight="bold">Received: </fo:inline>
            <fo:inline>November  3, 2014; </fo:inline>
            <fo:inline font-weight="bold">Accepted: </fo:inline>
            <fo:inline>February 23, 2015; </fo:inline>
            <fo:inline font-weight="bold">Published: </fo:inline>
            <fo:inline>June  8, 2015</fo:inline>
          </fo:block>
          <!-- copyright -->
          <fo:block padding="4pt">
            <fo:inline font-family="DroidSans" font-weight="bold">Copyright: </fo:inline>
            <fo:inline>© 2015 Neumann et al. This is an open
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
        <fo:inline>Migration of leukocytes into tissues is central for immune surveillance and pathogen defence as well as for the pathogenesis of autoimmune diseases. Leukocyte recruitment from the circulation is a tightly regulated multistep process depending on specific interactions between adhesion molecules and chemokine receptors expressed by the leukocytes and their respective ligands on the vascular endothelial cells [</fo:inline>
        <fo:inline>1</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>2</fo:inline>
        <fo:inline>]. The model of transmigration across an endothelium involves several distinct steps. Endothelial selectins mediate initial tethering and rolling of circulating leukocytes whereas endothelium-bound chemokines trigger subsequent stable adhesion and transendothelial migration [</fo:inline>
        <fo:inline>3</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>4</fo:inline>
        <fo:inline>]. Transcytosis, a process by which molecules internalized at one plasma membrane of a polarized cell are transported via vesicles to the opposite membrane, is one assumed mechanism how perivascularly expressed chemokines reach the blood-endothelial interface for presentation [</fo:inline>
        <fo:inline>5</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>6</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Chemokines can be generally classified into inflammatory and homeostatic chemokines. Constitutively expressed homeostatic chemokines like the CXC chemokine ligand (CXCL)12 are involved in the control of physiological leukocyte recirculation and in immune surveillance. Inflammatory chemokine expression is induced in inflamed tissues by pro-inflammatory cytokines like interferon (IFN)-γ and consistently controls recruitment of effector cells determining the composition of inflammatory cell infiltrates and the outcome of local inflammation [</fo:inline>
        <fo:inline>7</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>8</fo:inline>
        <fo:inline>]. CXCL9 and CXCL10 belong to the group of inflammatory chemokines binding to the common CXC chemokine receptor (CXCR)3 [</fo:inline>
        <fo:inline>9</fo:inline>
        <fo:inline>] and are critical for the recruitment of effector T cells in various liver diseases [</fo:inline>
        <fo:inline>10</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>13</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Circulating T cells pass the liver via the sinusoids, a network of small capillaries lined by liver sinusoidal endothelial cells (LSEC). The sinusoidal endothelium is a major route for T-cell entry into the liver parenchyma from where recruited cells can subsequently migrate to sites of inflammation [</fo:inline>
        <fo:inline>14</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>15</fo:inline>
        <fo:inline>]. T-cell rolling is greatly attenuated in the liver probably due to low levels of shear stress in hepatic sinusoids. The small luminal diameter of the sinusoids in combination with the slow hepatic blood flow in itself is sufficient to allow prolonged contact for the first interactions between lymphocytes and LSEC [</fo:inline>
        <fo:inline>16</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>17</fo:inline>
        <fo:inline>]. Thus, endothelial chemokine supply may be particularly important for T-cell recruitment into the liver.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We previously showed that LSEC promote chemokine-dependent CD4+ T-cell transmigration </fo:inline>
        <fo:inline font-style="italic">in vitro</fo:inline>
        <fo:inline> [</fo:inline>
        <fo:inline>18</fo:inline>
        <fo:inline>]. In the present study, we addressed molecular mechanisms involved in LSEC-mediated chemokine supply in more detail and analyzed their contribution to the hepatic recruitment of CD4+ T cells during immune surveillance and liver inflammation.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Material and Methods</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Mice</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>C57BL/6 mice were obtained from the Charité animal facility (Berlin, Germany) or Charles River (Wilmington, MA). CXCR3-/- mice [</fo:inline>
        <fo:inline>11</fo:inline>
        <fo:inline>] were kindly provided by PD Dr. Uta Höpken (Department of Tumor Genetics and Immunogenetics, Max-Delbrück-Center for Molecular Medicine, Berlin, Germany). All mouse experiments were conducted according to the German animal protection laws (Landesamt für Gesundheit und Soziales, Berlin, Germany; G 0022/09, G 0336/08, T 0183/07) with approval from the Charité—Universitätsmedizin ethical committee. All mice received humane care according to the national guidelines.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Cell isolation</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>To isolate non-parenchymal cells (NPC), livers were perfused </fo:inline>
        <fo:inline font-style="italic">in situ</fo:inline>
        <fo:inline> with digestion medium containing collagenase IV (Sigma-Aldrich, Steinheim, Germany) injected into the portal vein, excised and further incubated in the digestion medium. To eliminate parenchymal cells, the single-cell suspension was subjected to a one-step density gradient centrifugation with 26% Nycodenz (Progen Biotechnik, Heidelberg, Germany). LSEC were isolated from NPC by magnetic cell sorting using anti-CD146 antibody (ME-9F1; BioLegend, Fell, Germany) as previously described [</fo:inline>
        <fo:inline>19</fo:inline>
        <fo:inline>]. LSEC adhered over night and were subsequently washed in order to remove non-adherent cells resulting in a purity of higher than 99% [</fo:inline>
        <fo:inline>20</fo:inline>
        <fo:inline>]. For transmigration assays, CD4+ T cells were isolated from spleen and lymph nodes using anti-CD4 MicroBeads (Miltenyi Biotec, Bergisch Gladbach, Germany) to a purity of at least 95%. Untouched CD4+ T cells used for homing assays were isolated by CD4+ T Cell Isolation Kit (Miltenyi Biotec) according to the manufacturer’s instruction to a purity of at least 95%.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>FACS analysis</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>NPC were stained with anti-CD4 (RM4-5), anti-CD90.2 (53–2.1), anti-CD69 (H1.2F3; all BD Biosciences, Heidelberg, Germany) or anti-CXCR3 antibody (CXCR3-173; eBiosciences, San Diego, CA). For detection of cytokine-expressing cells, NPC were re-stimulated with phorbol myristate acetate (10 ng/ml) and ionomycin (500 ng/ml) for 4 h with the addition of brefeldin A (10 μg/ml; all Sigma-Aldrich) after 60 min. Cells were fixed with 2% paraformaldehyde. After permeabilization using 0.5% saponin, NPC were stained with anti-IFN-γ antibody (XMG1.2; BD Biosciences). Unspecific binding was blocked with rat immunoglobulin (Dianova, Hamburg, Germany) and anti-CD16/32 antibody (93; BioLegend). LSEC were incubated with AlexaFluor 647-labeled CXCL10 or CXCL12 (both 10 nM; Almac, Craigavon, UK). LSEC were treated with chlorpromazine (CPZ; 30 μM), nystatin (10 μM) or filipin (15 μM) for 10 min and AMD3100 (10 μM; all Sigma-Aldrich) for 60 min, washed and further incubated with the chemokines for 60 min. Data were acquired using a FACS Canto II (BD Biosciences) and analyzed by the FlowJo software (Tree Star, Ashland, OR).</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline font-style="italic">In vitro</fo:inline>
        <fo:inline> activation of LSEC</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline font-style="italic">Ex vivo</fo:inline>
        <fo:inline> isolated LSEC were cultured in the presence of tumor necrosis factor (TNF)-α (10 ng/ml; ImmunoTools, Friesoythe, Germany) and IFN-γ (20 ng/ml; R&amp;amp;D Systems, Wiesbaden, Germany) for 24 h. Adhered cells were detached by accutase treatment (Sigma-Aldrich).</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Transfection of LSEC</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>The expression vector Clathrin-LCa-EYFP (Addgene plasmid 21741) was provided by Chen Chen (Department of Chemistry and Chemical Biology, Harvard University, Cambridge, MA) [</fo:inline>
        <fo:inline>21</fo:inline>
        <fo:inline>]; CAV1-mEGFP (Addgene plasmid 27704) by Arnold Hayer (ETH Zurich, Institute of Biochemistry, Zurich, Switzerland) [</fo:inline>
        <fo:inline>22</fo:inline>
        <fo:inline>]. </fo:inline>
        <fo:inline font-style="italic">Ex vivo</fo:inline>
        <fo:inline> isolated LSEC (1x106) were re-suspended in 100 μl electroporation buffer (90 mM phosphate buffer, pH 7.2, 10 mM MgCl2, 50 mM glucose) before 4 μg plasmid DNA was added. Using an electroporation cuvette (2 mm gap; Lonza, Cologne, Germany) in the ELPorator 1000 device [</fo:inline>
        <fo:inline>23</fo:inline>
        <fo:inline>], LSEC were subjected to continuously combined high voltage (400 V/400 μs) and low voltage (150 V/20 ms) pulses. Immediately after pulse application, LSEC were transferred into pre-warmed Dulbecco's Modified Eagle Medium (Life Technologies, Carlsbad, CA) containing 10% fetal calf serum and were incubated at 37°C for 48 h.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Real-time quantitative RT-PCR analysis</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Total RNA was isolated from liver samples or LSEC by single-phase organic extraction (RNAPure; Peqlab, Erlangen, Germany) and 100 ng RNA was reversely transcribed into cDNA using the High-Capacity cDNA Reverse Transcription Kit (Applied Biosystems, Darmstadt, Germany). Quantitative PCR was performed using a TaqMan Universal Master Kit and exon-spanning, gene-specific assays (CXCL9, Mm00434946_m1; CXCL10, Mm00445235_m1; CXCL12, Mm00445553_m1; CXCR4, Mm01292123_m1; CXCR3, Mm00438259_m1; GAPDH, Mm03302249_g1; Applied Biosystems, Darmstadt, Germany) in a StepOne Plus real-time PCR system (Applied Biosystems). Specific chemokine and chemokine receptor mRNA expression was quantified in relation to Glyceraldehyde 3-phosphate dehydrogenase (GAPDH) as the housekeeping gene using the ΔΔCT method [</fo:inline>
        <fo:inline>24</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Transmigration assay</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>LSEC were cultured overnight on gelatine-coated transwell membranes with a 5 μm pore size (Corning, Sigma-Aldrich) to form confluent cell layers [</fo:inline>
        <fo:inline>18</fo:inline>
        <fo:inline>]. LSEC were treated with the specific clathrin inhibitor CPZ (30 μM) [</fo:inline>
        <fo:inline>25</fo:inline>
        <fo:inline>], the caveolae-specific inhibitors nystatin (10 μM) or filipin (15 μM) [</fo:inline>
        <fo:inline>26</fo:inline>
        <fo:inline>] or the CXCR4 antagonist AMD3100 (10 μM) [</fo:inline>
        <fo:inline>27</fo:inline>
        <fo:inline>] added to the lower chamber of the transwell for 10 min (CPZ, nystatin, filipin) or 60 min (AMD3100). After washing, LSEC layers were pre-incubated with the chemokine (CXCL12, 50 nM; CXCL9, CXCL10, both 100 nM; all R&amp;amp;D Systems) applied to the lower chamber of the transwell for 120 min. After removal of the chemokine, 5x105 total CD4+ T cells were added to the upper chamber of the transwell and were allowed to transmigrate across the LSEC layer for 90 min. Transmigrated cells from the lower chamber or from the input were mixed with Fluoresbrite beads (Polysciences, Eppelheim, Germany), stained with anti-CD4 (GK1.5) and anti-CD45RB antibody (16A; both BD Biosciences) and analyzed by flow cytometry. Absolute cell numbers were determined by gating on CD4+ for total or CD45RBlow CD4+ for effector/memory CD4+ T cells in relation to defined numbers of beads.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Confocal laser scanning microscopy</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>LSEC were cultured overnight on transwell inserts. AlexaFluor 647-labeled CXCL12 and CXCL10 (both 50 nM) or AlexaFluor 488-labeled acetylated-low density lipoprotein (AcLDL; 10 μg/ml; Life Technologies) were added to the lower chamber of the transwell for indicated times. Subsequently, LSEC were fixed with 4% paraformaldehyde (Sigma-Aldrich) and stained with mouse anti-clathrin (3F133), mouse anti-caveolin-1 (7C8; both Santa Cruz Biotechnology, Santa Cruz, CA), rabbit anti-early endosome antigen (EEA)1 (C45B10; Cell Signaling Technology, Danvers, MA), rabbit anti-green fluorescent protein (GFP), rabbit anti-transferrin receptor (TfR) and rat anti-lysosomal-associated membrane protein (LAMP)-1 (1D4B; all Abcam, Cambridge, UK) antibody followed by AlexaFluor 488-conjugated anti-mouse, AlexaFluor 647-labeled anti-rat, AlexaFluor 488-conjugated anti-rabbit or anti-rat (all Live Technologies, Karlsruhe, Germany) secondary antibody. Negative controls were performed by omitting the primary antibodies. Nuclei were stained with 4',6-diamidino-2-phenylindole (DAPI) (Roche, Grenzach-Whylen, Germany). LSEC were treated with CPZ (30 μM), filipin (15 nM), nystatin (10 nM) or AMD3100 (10 μM) added to the lower chamber for 10 min (CPZ, nystatin, filipin) or 60 min (AMD3100). LSEC were washed, followed by chemokine incubation (60 min) as described above. Images were taken with an LSM 510 Meta confocal laser scanning microscope (Carl Zeiss MicroImaging, Heidelberg, Germany).</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Immunohistochemistry and immunofluorescence</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>To quantify T-cell infiltration, paraffin-embedded liver sections were stained with rabbit anti-CD3 antibody (N1580; Dako, Hamburg, Germany) followed by anti-rabbit secondary antibody (Dianova, Hamburg, Germany) and the Streptavidin-Alkaline Phosphatase Kit (Dako) using Fast Red as chromogen. All CD3+ cells per high power field (hpf) and three hpf per liver sample were counted. For immunofluorescence, shock-frozen liver tissue was cut into 4 μm sections and stained with rat anti-CD146 antibody followed by AlexaFluor 488-labeled anti-rat secondary antibody (Dianova). Subsequently, liver sections were stained with rabbit anti-CXCL9 (Santa Cruz Biotechnology) followed by AlexaFluor 455-labeled anti-rabbit secondary antibody (Dianova). Negative controls were performed by omitting the primary antibodies. Images were taken with an AxioImager Z1 microscope and processed with Axiovision software (Carl Zeiss MicroImaging).</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Hepatitis induction and CPZ treatment</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Concanavalin (Con) A (20 mg/kg; Sigma-Aldrich) was injected intravenously to induce T cell-mediated hepatitis in C57BL/6 mice. CPZ (3 mg/kg) was intraperitoneally administered 60 min after Con A-treatment. Blood was drawn from individual mice to monitor progression of hepatitis. Liver injury was quantified by automated measurement of plasma activities of alanin transaminase (ALT) using a Roche modular analyzer.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline font-style="italic">In vivo</fo:inline>
        <fo:inline> homing assay</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Mice received CPZ 7 h after Con A treatment. Radioactively labeled CD4+ T cells (1x106; 20 μCi 51Cr; GE Healthcare, Munich, Germany) were intravenously injected 120 min after administration of CPZ. After 60 min migration time, the radioactivity of the liver and the remaining body was counted using a Wizard gamma counter (Wallac, Turku, Finland). The percentage of organ-specific radioactivity in relation to the total recovered radioactivity reflected the percentage of cells that have migrated into the respective organ [</fo:inline>
        <fo:inline>28</fo:inline>
        <fo:inline>].</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Data analysis</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Data were analyzed and statistical significance was determined using the GraphPad Prism software (San Diego, CA). Statistical comparison was carried out using the nonparametric two-tailed Mann-Whitney test.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Results</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Hepatic expression of the inflammatory chemokines CXCL9 and CXCL10 is strongly increased during T cell-mediated hepatitis</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline font-style="italic">In situ</fo:inline>
        <fo:inline> production, transport and presentation of chemokines in the liver are crucial for the hepatic recruitment of circulating T cells [</fo:inline>
        <fo:inline>10</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>29</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>30</fo:inline>
        <fo:inline>]. In order to identify chemokines induced in the inflamed liver, we used the model of Con A-induced T cell-mediated hepatitis and analyzed hepatic expression of inflammatory and homeostatic chemokines. The mRNA expression of inflammatory CXCL9 and CXCL10 was significantly increased 3 h after induction of hepatitis (</fo:inline>
        <fo:inline>Fig 1A</fo:inline>
        <fo:inline>), a time point well before liver damage became detectable by plasma ALT levels (</fo:inline>
        <fo:inline>Fig 1B</fo:inline>
        <fo:inline>). In contrast, the mRNA expression of the homeostatic chemokine CXCL12 was significantly reduced at the same time point. CXCL9 and CXCL10 mRNA expression decreased over time whereas CXCL12 recovered to its initial levels within 24 h after hepatitis induction (</fo:inline>
        <fo:inline>Fig 1A</fo:inline>
        <fo:inline>). By using immunofluorescence analysis, we detected CXCL9 in the inflamed liver tissue. It particularly co-localized with CD146 demonstrating that CXCL9 was associated with LSEC lining the liver sinusoids (</fo:inline>
        <fo:inline>Fig 1C</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123867/graphics/journal.pone.0123867.g001"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>LSEC express and internalize homeostatic and inflammatory chemokines</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Endothelial chemokine expression or internalization of chemokines produced by other liver cells can account for the presence of chemokines in LSEC. We studied the expression of homeostatic and inflammatory chemokines in LSEC by quantitative RT-PCR analysis. In resting LSEC, we detected expression of CXCL12 mRNA but not of CXCL9 and CXCL10 mRNA. Establishing inflammatory conditions </fo:inline>
        <fo:inline font-style="italic">in vitro</fo:inline>
        <fo:inline>, LSEC were activated with TNF-α and IFN-γ. Activated LSEC markedly down-regulated CXCL12 whereas CXCL9 and CXCL10 expression was strongly increased (</fo:inline>
        <fo:inline>Fig 2A</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123867/graphics/journal.pone.0123867.g002"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>To analyze chemokine uptake, we incubated LSEC with fluorochrome-labeled CXCL12 or CXCL10 and determined the intracellular fluorescence intensity by flow cytometry (</fo:inline>
        <fo:inline>Fig 2B</fo:inline>
        <fo:inline>). We showed a time-dependent internalization of both chemokines at 37°C that was absent at 4°C (</fo:inline>
        <fo:inline>Fig 2C</fo:inline>
        <fo:inline>) indicating that chemokine internalisation by LSEC was an active, energy-dependent process. In addition, LSEC cultured on transwell membranes were incubated with fluorochrom-labeled CXCL12 or CXCL10 present in the lower chamber of the transwell and we visualized basolateral internalization and localization of both chemokines in vesicle-like structures in LSEC (</fo:inline>
        <fo:inline>Fig 2D</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In summary, LSEC expressed and internalized homeostatic as well as inflammatory chemokines.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>LSEC internalize CXCL12 via CXCR4-mediated endocytosis</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Chemokines are bound by their corresponding receptors and we asked whether LSEC take up chemokines by receptor-mediated endocytosis. Resting LSEC expressed CXCR4, the receptor for CXCL12, which was strongly decreased after treatment with TNF-α and IFN-γ. In contrast, levels of CXCR3 mRNA were very low in resting LSEC and not increased under inflammatory conditions (</fo:inline>
        <fo:inline>Fig 3A</fo:inline>
        <fo:inline>). Blockage of CXCR4 by the specific antagonist AMD3100 inhibited CXCL12 internalisation in LSEC (Fig </fo:inline>
        <fo:inline>3B</fo:inline>
        <fo:inline> and </fo:inline>
        <fo:inline>3C</fo:inline>
        <fo:inline>). We further analyzed whether inhibition of basolateral CXCL12 uptake in LSEC affect CXCL12-dependent transmigration of CD4+ T cells across LSEC. To avoid direct inhibitory effects of AMD3100 on CD4+ T cells, we sequentially pre-incubated LSEC layers with the CXCR4 inhibitor and CXCL12 applied to the lower chamber of the transwell. After removal of unbound chemokine, transmigration assays with CD4+ T cells were performed. Basolateral pre-incubation of LSEC with CXCL12 led to significantly increased CD4+ T-cell transmigration and blockage of endothelial CXCR4 inhibited this process (</fo:inline>
        <fo:inline>Fig 3D</fo:inline>
        <fo:inline>). Corresponding to the very low expression of CXCR3 by LSEC, neither internalisation of CXCL10 by LSEC from CXCR3-deficient mice (</fo:inline>
        <fo:inline>Fig 3E</fo:inline>
        <fo:inline>) nor CXCL10-dependent transmigration of effector/memory CD4+ T cells across CXCR3-/- LSEC layer was affected compared to wild type (WT) LSEC (</fo:inline>
        <fo:inline>Fig 3F</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123867/graphics/journal.pone.0123867.g003" content-width="160mm"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>These data demonstrate that LSEC internalized CXCL12 via CXCR4-mediated endocytosis leading to enhanced CD4+ T-cell transmigration whereas CXCL10 facilitated transmigration of effector/memory CD4+ T cells but its endothelial uptake was independent of the specific receptor.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>LSEC internalize chemokines in clathrin-coated vesicles</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Clathrin-dependent endocytosis and caveolae are the two major pathways mediating internalization and sorting of extracellular molecules [</fo:inline>
        <fo:inline>31</fo:inline>
        <fo:inline>]. To define the pathway by which LSEC internalize chemokines, LSEC were basolaterally incubated with CXCL12 and stained for clathrin or caveolin-1. CXCL12 co-localized with clathrin but not with caveolin-1 (</fo:inline>
        <fo:inline>Fig 4A</fo:inline>
        <fo:inline>). To confirm these findings, LSEC were transfected for the transient overexpression of tagged clathrin or caveolin-1 and stained with anti-GFP. We again showed co-localization of CXCL12 with clathrin but not with caveolin-1 (</fo:inline>
        <fo:inline>Fig 4B</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123867/graphics/journal.pone.0123867.g004"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>LSEC were treated with the caveolae-specific inhibitors nystatin or filipin or with the specific clathrin inhibitor CPZ prior to basolateral chemokine incubation. Neither nystatin nor filipin affected the uptake of CXCL12 or CXCL10 in LSEC. In contrast, CPZ-treated LSEC were strongly impaired in their ability to internalize both chemokines (Fig </fo:inline>
        <fo:inline>4C</fo:inline>
        <fo:inline> and </fo:inline>
        <fo:inline>4D</fo:inline>
        <fo:inline>). In addition, the inhibitory effect of CPZ on endothelial chemokine internalization was also shown for CXCL10 uptake in CXCR3-/- LSEC (</fo:inline>
        <fo:inline>Fig 4E</fo:inline>
        <fo:inline>). In line with these data, basolateral treatment of LSEC layers with the caveolae-specific inhibitors prior to chemokine incubation did not alter chemokine-dependent CD4+ T-cell transmigration. However, CPZ treatment significantly decreased CXCL9- and CXCL10-dependent transmigration of effector/memory CD4+ T cells as well as CXCL12-triggered transmigration of CD4+ T cells across LSEC layer (</fo:inline>
        <fo:inline>Fig 4F</fo:inline>
        <fo:inline>). The CXCL10-dependent transmigration of effector/memory CD4+ T cells across CXCR3-/- LSEC layer was also strongly reduced after treatment with CPZ (</fo:inline>
        <fo:inline>Fig 4G</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In summary, the clathrin pathway proved crucial in LSEC-mediated chemokine transfer to CD4+ T cells.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>LSEC transfer internalized chemokines to early endosomes but not to recycling endosomes or lysosomes</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>To further determine molecular mechanisms involved in endothelial chemokine transport, we performed co-localization studies of chemokines and components of the endocytic pathway. We identified early endosomes and recycling endosomes by staining with antibodies specific for EEA1 [</fo:inline>
        <fo:inline>32</fo:inline>
        <fo:inline>] and TfR [</fo:inline>
        <fo:inline>33</fo:inline>
        <fo:inline>], respectively. Lysosomes were identified by staining for LAMP-1 [</fo:inline>
        <fo:inline>34</fo:inline>
        <fo:inline>]. LSEC were basolaterally incubated with CXCL12 or CXCL10 for indicated time points. After 15 min, both chemokines showed co-localization with EEA1 that was strongly decreased after 30 min (</fo:inline>
        <fo:inline>Fig 5A</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>Table 1</fo:inline>
        <fo:inline>). At this time point, neither CXCL10 nor CXCL12 co-localized with TfR (</fo:inline>
        <fo:inline>Fig 5B</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>Table 2</fo:inline>
        <fo:inline>). After 60 min, CXCL10 and CXCL12 did not co-localize with LAMP-1 and co-localization was also not found after 120 min of incubation (</fo:inline>
        <fo:inline>Fig 5C</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>Table 3</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123867/graphics/journal.pone.0123867.g005"/>
        </fo:block>
      </fo:block-container>
      <fo:block padding-left="9pt" border-left-style="solid" border-width="1.5pt">
        <fo:block padding-top="6pt" padding-bottom="6pt" font-size="9pt">
          <!-- caption -->
          <!-- title -->
          <fo:inline font-weight="bold">Co-localization of CXCL10 and CXCL12 with EEA1 in LSEC.</fo:inline>
          <!-- paragraph -->
        </fo:block>
        <fo:table width="100%" table-layout="fixed" padding-top="6pt">
          <!-- columns -->
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(2)"/>
          <!-- header -->
          <fo:table-header line-height="1.5" font-size="8pt" text-align="left" font-weight="bold" border-color="gray" border-width="1.5pt" border-before-style="solid" border-after-style="solid">
            <fo:table-row>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Chemokine</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Time (min)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Cell #</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="2">
                <fo:block text-align="center">
                  <fo:inline># vesicles per cell</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>Co-localization with EEA1 (%)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>red</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>yellow</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-header>
          <fo:table-body font-size="8pt" line-height="1.5" text-align="left">
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL10</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>15</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>91</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>10 (5; 15)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>7 (3.5; 10)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>75 (61.8; 88.6)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>30</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>85</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>10 (6; 13)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>4 (2; 6)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>38.9 (21.1; 55.6)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL12</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>15</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>106</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>8 (6; 13)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>6 (4; 9)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>75 (66.7; 87.5)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5" border-color="gray" border-width="1pt" border-after-style="solid">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>30</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>105</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>12 (7; 17)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>5 (3; 8)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>43.5 (28.6; 59.1)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:block>
      <fo:block padding-left="9pt" border-left-style="solid" border-width="1.5pt">
        <fo:block padding-top="6pt" padding-bottom="6pt" font-size="9pt">
          <!-- caption -->
          <!-- title -->
          <fo:inline font-weight="bold">Co-localization of CXCL10 and CXCL12 with TfR in LSEC.</fo:inline>
          <!-- paragraph -->
        </fo:block>
        <fo:table width="100%" table-layout="fixed" padding-top="6pt">
          <!-- columns -->
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(2)"/>
          <!-- header -->
          <fo:table-header line-height="1.5" font-size="8pt" text-align="left" font-weight="bold" border-color="gray" border-width="1.5pt" border-before-style="solid" border-after-style="solid">
            <fo:table-row>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Chemokine</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Time (min)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Cell #</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="2">
                <fo:block text-align="center">
                  <fo:inline># vesicles per cell</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>Co-localization with TfR (%)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>red</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>yellow</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-header>
          <fo:table-body font-size="8pt" line-height="1.5" text-align="left">
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL10</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>30</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>97</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>11 (7; 15)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 9.5)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5" border-color="gray" border-width="1pt" border-after-style="solid">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL12</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>30</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>102</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>10 (7.5; 15)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 10)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:block>
      <fo:block padding-left="9pt" border-left-style="solid" border-width="1.5pt">
        <fo:block padding-top="6pt" padding-bottom="6pt" font-size="9pt">
          <!-- caption -->
          <!-- title -->
          <fo:inline font-weight="bold">Co-localization of CXCL10, CXCL12 and AcLDL with LAMP-1 in LSEC.</fo:inline>
          <!-- paragraph -->
        </fo:block>
        <fo:table width="100%" table-layout="fixed" padding-top="6pt">
          <!-- columns -->
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(3)"/>
          <!-- header -->
          <fo:table-header line-height="1.5" font-size="8pt" text-align="left" font-weight="bold" border-color="gray" border-width="1.5pt" border-before-style="solid" border-after-style="solid">
            <fo:table-row>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Reagent</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Time (min)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Cell #</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="2">
                <fo:block text-align="center">
                  <fo:inline># vesicles per cell</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>Co-localization with LAMP-1 (%)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>red/green</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>yellow</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-header>
          <fo:table-body font-size="8pt" line-height="1.5" text-align="left">
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL10</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>60</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>96</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>12 (7.8; 18)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 6.4)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>120</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>73</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>10 (6; 20)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 6.3)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL12</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>60</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>97</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>13 (7; 17)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 5.9)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>120</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>79</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>14 (9; 20)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 6.9)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>AcLDL</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>60</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>37</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>18 (11; 24)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 3.3)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5" border-color="gray" border-width="1pt" border-after-style="solid">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>120</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>28</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>16.5 (10; 20)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 1)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>0 (0; 5.9)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Interestingly, basolaterally internalized AcLDL, a protein that usually ends up in the lysosome [</fo:inline>
        <fo:inline>35</fo:inline>
        <fo:inline>], also did not co-localize with LAMP-1 in LSEC after 60 min and 120 min of incubation (</fo:inline>
        <fo:inline>Fig 5D</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>Table 3</fo:inline>
        <fo:inline>). In addition, both chemokines showed a strong co-localization with AcLDL after 60 min incubation time and also after incubation in medium for another hour pointing to a shared intracellular transport pathway (</fo:inline>
        <fo:inline>Fig 5E</fo:inline>
        <fo:inline>, </fo:inline>
        <fo:inline>Table 4</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block padding-left="9pt" border-left-style="solid" border-width="1.5pt">
        <fo:block padding-top="6pt" padding-bottom="6pt" font-size="9pt">
          <!-- caption -->
          <!-- title -->
          <fo:inline font-weight="bold">Co-localization of CXCL10 and CXCL12 with AcLDL in LSEC.</fo:inline>
          <!-- paragraph -->
        </fo:block>
        <fo:table width="100%" table-layout="fixed" padding-top="6pt">
          <!-- columns -->
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(1)"/>
          <fo:table-column column-width="proportional-column-width(2)"/>
          <!-- header -->
          <fo:table-header line-height="1.5" font-size="8pt" text-align="left" font-weight="bold" border-color="gray" border-width="1.5pt" border-before-style="solid" border-after-style="solid">
            <fo:table-row>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Chemokine</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Time (min)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>Cell #</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="2">
                <fo:block text-align="center">
                  <fo:inline># vesicles per cell</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>Co-localization with AcLDL (%)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>red</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="right">
                  <fo:inline>yellow</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-header>
          <fo:table-body font-size="8pt" line-height="1.5" text-align="left">
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL10</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>60</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>87</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>8 (5.5; 12.5)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>7 (5; 11.5)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>90.9 (81.7; 100)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>60 + 60</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>94</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>10 (7; 14)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>10 (6.3; 13.8)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>100 (91.1; 100)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#E0E0E0">
              <fo:table-cell number-rows-spanned="2" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>CXCL12</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>60</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>81</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>7 (5; 11)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>7 (5; 10)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>100 (92.9; 100)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
            <fo:table-row text-indent="36pt" background-color="#F5F5F5" border-color="gray" border-width="1pt" border-after-style="solid">
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>60 + 60</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>83</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>9 (6; 12)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>8 (5.5; 11)</fo:inline>
                </fo:block>
              </fo:table-cell>
              <fo:table-cell number-rows-spanned="1" number-columns-spanned="1">
                <fo:block text-align="left">
                  <fo:inline>100 (88.9; 100)</fo:inline>
                </fo:block>
              </fo:table-cell>
            </fo:table-row>
          </fo:table-body>
        </fo:table>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Recruitment of CD4+ T cells into the inflamed liver is decreased after administration of CPZ</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>During liver inflammation, the rate of T-cell recruitment via the sinusoidal endothelium strongly increases [</fo:inline>
        <fo:inline>36</fo:inline>
        <fo:inline>]. Having shown </fo:inline>
        <fo:inline font-style="italic">in vitro</fo:inline>
        <fo:inline> that CPZ affects endothelial chemokine transfer leading to reduced transmigration of CD4+ T cells across LSEC layer we asked whether CPZ also influences CD4+ T-cell recruitment to the inflamed liver.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>To induce hepatic inflammation, mice were treated with Con A and received CPZ 7 h later, a time point when hepatitis was established (see </fo:inline>
        <fo:inline>Fig 1B</fo:inline>
        <fo:inline>). Radioactively labeled CD4+ T cells were transferred into the mice and their immigration into the liver was assessed by an </fo:inline>
        <fo:inline font-style="italic">in vivo</fo:inline>
        <fo:inline> homing assay. In mice that received Con A, recruitment of CD4+ T cells to the inflamed livers was significantly enhanced compared to livers of healthy mice. Strikingly, despite liver inflammation, migration of CD4+ T cells into the liver was significantly reduced if mice received CPZ in addition to Con A. CPZ itself did not influence hepatic migration of transferred CD4+ T cells in healthy mice (</fo:inline>
        <fo:inline>Fig 6</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123867/graphics/journal.pone.0123867.g006"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Accumulation of CXCR3+ CD4+ T cells in the inflamed liver is reduced after administration of CPZ</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>During autoimmune hepatitis, activated T cells accumulate within the liver. We again used the model of Con A-induced T cell-mediated hepatitis to study the effect of interfering with the clathrin pathway on hepatic T-cell infiltration during liver inflammation. Mice were treated with Con A and received CPZ 60 min after hepatitis induction, a time point when migration of activated T cells to the liver has not yet taken place. One day after hepatitis induction, liver tissue was stained with an anti-CD3 antibody to identify T cells. We showed a strong hepatic accumulation of CD3+ T cells around the portal areas during liver inflammation. This T-cell accumulation was significantly decreased after administration of CPZ (</fo:inline>
        <fo:inline>Fig 7A</fo:inline>
        <fo:inline>). Arguing against direct effects of CPZ on T-cell activation </fo:inline>
        <fo:inline font-style="italic">in vivo</fo:inline>
        <fo:inline>, we detected similar expression of the early activation marker CD69 and the inflammatory cytokine IFN-γ in hepatic CD90.2+ total T cells as well as CD4+ T cells of mice that received CPZ and Con A compared to those of only Con A-treated mice (</fo:inline>
        <fo:inline>S1 Fig</fo:inline>
        <fo:inline>).</fo:inline>
      </fo:block>
      <fo:block-container margin="0pt">
        <fo:block width="100%" border-style="solid" border-width="normal" text-align="right">
          <fo:external-graphic src="corpora/0123867/graphics/journal.pone.0123867.g007" content-width="160mm"/>
        </fo:block>
      </fo:block-container>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>We also tested the effect of CPZ on chemokine-dependent T-cell infiltration during liver inflammation. We quantified the fraction of hepatic CD4+ T cells expressing CXCR3, the receptor for CXCL9 and CXCL10 that were strongly up-regulated at an early stage of Con A-induced hepatitis (see </fo:inline>
        <fo:inline>Fig 1A</fo:inline>
        <fo:inline>). The percentage of CXCR3+ CD4+ T cells significantly increased in the inflamed livers of Con A-treated mice compared to those of healthy mice. Interestingly, in mice that received CPZ the percentage of hepatic CXCR3+ CD4+ T cells was significantly reduced (</fo:inline>
        <fo:inline>Fig 7B</fo:inline>
        <fo:inline>) further supporting the finding that inflammation-induced T-cell migration to the liver is diminished after administration of a clathrin inhibitor </fo:inline>
        <fo:inline font-style="italic">in vivo</fo:inline>
        <fo:inline>.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Discussion</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>T-cell migration into the liver tissue is a major factor determining the pathogenesis of hepatic inflammation. Hepatic expression of CXCR3 ligands is strongly induced in many inflammatory liver diseases [</fo:inline>
        <fo:inline>10</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>12</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>37</fo:inline>
        <fo:inline>] and infiltrating effector T cells express high levels of CXCR3 [</fo:inline>
        <fo:inline>38</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>41</fo:inline>
        <fo:inline>]. During liver inflammation, CXCR3 ligands have been shown to be expressed by various liver resident cells inclusive LSEC, hepatocytes, stellate cells, and cholangiocytes [</fo:inline>
        <fo:inline>30</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>42</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>45</fo:inline>
        <fo:inline>]. In Con A-induced hepatitis, we found CXCL9 in the inflamed liver to be closely associated with LSEC, which represent the first contact site for T-cell immigration into the liver. Under inflammatory conditions </fo:inline>
        <fo:inline font-style="italic">in vitro</fo:inline>
        <fo:inline>, LSEC expressed CXCL9 and CXCL10 further emphasizing the finding that LSEC contribute to the reservoir of chemokines that are expressed during liver inflammation.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Beside chemokine expression LSEC were able to actively internalize basolateral chemokines which may be secreted by other cell types of the subadjacent liver tissue. Perivascularly expressed chemokines can be transported across the endothelium [</fo:inline>
        <fo:inline>42</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>46</fo:inline>
        <fo:inline>–</fo:inline>
        <fo:inline>50</fo:inline>
        <fo:inline>] and immobilized on the endothelial glycocalyx [</fo:inline>
        <fo:inline>42</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>51</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>52</fo:inline>
        <fo:inline>] to support localized lymphocyte recruitment. We have previously shown that LSEC transfer basolaterally internalized chemokines to CD4+ T cells thereby enhancing T-cell transmigration [</fo:inline>
        <fo:inline>18</fo:inline>
        <fo:inline>]. What structures are involved in the endothelial trafficking of chemokines? Chemokine receptors mainly regulate leukocyte migration but have also been identified on endothelia [</fo:inline>
        <fo:inline>53</fo:inline>
        <fo:inline>]. The functional outcome of CXCR4 expression differs between endothelial cells and T cells. CXCR4+ T cells do not efficiently take up CXCL12 but are highly motile in response to this chemokine whereas tissue-anchored CXCR4+ bone marrow endothelial cells regulate CXCL12 availability by transcytosis [</fo:inline>
        <fo:inline>47</fo:inline>
        <fo:inline>]. Correspondingly, we here demonstrated that the blockage of LSEC-expressed CXCR4 inhibited CXCL12 internalization and CXCL12-dependent CD4+ T-cell transmigration strongly indicating a role of this chemokine receptor in LSEC-mediated chemokine transport to CD4+ T cells. In homeostasis, CXCL12 was constitutively expressed in liver tissue and we assumed that the LSEC-mediated transfer of CXCL12 from the tissue to the blood-endothelial interface is involved in T-cell migration as part of the hepatic immune surveillance. In acute T cell-induced hepatitis, CXCL12 expression was markedly down-regulated suggesting that this chemokine did not mediate hepatic T-cell recruitment during Con A-induced liver inflammation. However, CXCL12-triggered infiltration of CXCR4+ lymphocytes has been described during hepatitis C and B virus infection [</fo:inline>
        <fo:inline>54</fo:inline>
        <fo:inline>] thus, CXCR4-dependent endothelial CXCL12 transport may also play a role in the pathogenesis of chronic liver infections.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In contrast to endothelial CXCL12 internalization which strictly depended on CXCR4, LSEC did not express CXCR3 and CXCL10 was internalized independently of its receptor. Another study reported expression of CXCR3 by dermal and lung microvessel endothelium but also in this case the uptake of CXCL10 was not receptor dependent [</fo:inline>
        <fo:inline>50</fo:inline>
        <fo:inline>]. Together with the fact that CXCR3 expression in LSEC was also not induced under inflammatory conditions, where endothelial transport of inflammatory chemokines may be of particular importance, our data emphasize the assumption that mechanisms relating to CXCL9/10-induced signal transduction in leukocytes are different from those used for endothelial trafficking. CXCR4 mediates both CXCL12-triggered signal transduction in motile leukocytes as well as transport of CXCL12 across an endothelium. In contrast, the main function of CXCR3 seems to be signal transduction in leukocytes in order to induce their recruitment to sites of inflammation whereas endothelial transport of its ligands is mediated by other, so far not identified molecular mechanisms. The non-signaling chemokine receptor Duffy antigen receptor is expressed on endothelial cells and erythrocytes and binds chemokines of the CC and CXC family but not CXCL12. It has been shown that the functional outcome of chemokine binding by Duffy antigen receptor for chemokines is transcytosis [</fo:inline>
        <fo:inline>55</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>56</fo:inline>
        <fo:inline>] and it would be conceivable that this interceptor is involved in the transport of the CXCR3 ligands across LSEC. Another study also described a receptor-independent mechanism by which glycosaminoglycans mediated endothelial transcytosis of inflammatory chemokines [</fo:inline>
        <fo:inline>57</fo:inline>
        <fo:inline>]. In our model of acute T cell-mediated hepatitis, fast up-regulation of CXCL9 and CXCL10 in the liver tissue preceded parenchymal accumulation of effector T cells. It is conceivable that enhanced local production and LSEC-mediated transport and presentation of the CXCR3 ligands supported hepatic recruitment of CXCR3+ effector CD4+ T cells triggering inflammation as well as CXCR3+ regulatory CD4+ T cells necessary to suppress hepatitis [</fo:inline>
        <fo:inline>58</fo:inline>
        <fo:inline>] and the balance of the cells recruited will determine the outcome of the liver disease.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Chemokine receptors undergo ligand-induced internalization through clathrin-mediated endocytosis [</fo:inline>
        <fo:inline>47</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>59</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>60</fo:inline>
        <fo:inline>]. CPZ causes disruption of clathrin-coated vesicles [</fo:inline>
        <fo:inline>25</fo:inline>
        <fo:inline>]. Focussing on this aspect of CPZ action, treatment of LSEC with CPZ inhibited internalization of both CXCL12 and CXCL10 and significantly decreased chemokine-dependent transmigration of CD4+ T cells across the LSEC layer. The clathrin-dependent internalization and presentation of CXCL9 and CXCL10 in CXCR3-/- LSEC further support the assumption that a so far not identified receptor is involved in the transport of the CXCR3 ligands across endothelial cells.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Several intracellular pathways regulate the fate of proteins after their internalization. Co-localization studies in LSEC showed that internalized chemokines were transferred to clathrin-coated vesicles but not to caveolae. Corresponding to this finding, inhibition of caveolae in LSEC neither affected chemokine internalization nor chemokine-dependent CD4+ T-cell transmigration. Endothelial chemokine transport has been described to be mediated by either caveolae or clathrin-coated vesicles dependent on the type of endothelium [</fo:inline>
        <fo:inline>47</fo:inline>
        <fo:inline>,</fo:inline>
        <fo:inline>49</fo:inline>
        <fo:inline>]. We excluded caveolae and demonstrated that LSEC used the clathrin pathway for chemokine transport. We also showed that CXCL12 and CXCL10 were transferred to EEA1+ early endosomes shortly after internalization, an endocytic compartment downstream of the clathrin-mediated uptake. Both chemokines left the early endosomes again but neither co-localized with LAMP-1 nor with TfR suggesting that LSEC did not primarily transfer basolaterally internalized chemokines to the lysosomes for degradation or to the recycling endosomes to return them back to the basolateral plasma membrane. Moreover, AcLDL, a protein that is internalized via scavenger receptors and usually degraded after internalization, was also not transferred to the lysosomes and co-localized with the chemokines in LSEC. On the basis of these data, we assume that the liver sinusoidal endothelium mainly transported perivascularly produced proteins like chemokines to the blood-endothelial interface. The striking co-localization of chemokines and AcLDL in LSEC suggests that scavenger receptors might be involved in endothelial chemokine supply. We found no evidence that the type of chemokine to be transported through the endothelial cell layer is selected. Thus, the pattern of chemokines presented by LSEC seems to depend on the chemokine pool produced by liver resident cells which differs under homeostatic and inflammatory conditions.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Having demonstrated that inhibition of the clathrin pathway by CPZ reduced the chemokine-dependent transmigration of CD4+ T cells </fo:inline>
        <fo:inline font-style="italic">in vitro</fo:inline>
        <fo:inline> we also analyzed whether CPZ affects T-cell migration into the liver </fo:inline>
        <fo:inline font-style="italic">in vivo</fo:inline>
        <fo:inline>. We showed that the strongly increased recruitment of transferred CD4+ T cells into the inflamed liver of Con A-treated mice was abolished after administration of CPZ during hepatitis whereas the clathrin inhibitor did not influence CD4+ T-cell migration to the healthy liver. Moreover, the high frequency of CXCR3+ CD4+ T cells in the inflamed liver tissue was strongly reduced after administration of CPZ. We excluded inhibitory effects of CPZ on T-cell activation </fo:inline>
        <fo:inline font-style="italic">in vivo</fo:inline>
        <fo:inline> and another study also showed that CPZ did not affect inflammatory cytokine production [</fo:inline>
        <fo:inline>61</fo:inline>
        <fo:inline>] during Con A-induced hepatitis which could be possible reasons for the reduced hepatic infiltration of effector CD4+ T cells. These data demonstrate that the inflammation-induced hepatic recruitment of T cells was especially impaired after treatment with the clathrin inhibitor. CPZ might affect local chemokine production and/or endothelial chemokine transport and presentation thereby attenuating effector T-cell migration into the inflamed liver. Despite potential other effects of CPZ on lymphocyte function, our </fo:inline>
        <fo:inline font-style="italic">in vitro</fo:inline>
        <fo:inline> data suggested CPZ as a suitable model substance for this first study on the impact of clathrin inhibition on the course of liver inflammation.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>In summary, the data presented here indicate that the liver sinusoidal endothelium, which acts as an anatomical barrier between the liver parenchyma and the blood circulation, contains an intracellular transport system for the transfer of tissue-expressed chemokines across this barrier in order to induce local recruitment of circulating T cells. We identified CXCR4- and clathrin-dependent intracellular transport mechanisms involved in LSEC-mediated chemokine transport to CD4+ T cells and demonstrated that inhibition of these processes diminished chemokine-dependent CD4+ T-cell transmigration </fo:inline>
        <fo:inline font-style="italic">in vitro</fo:inline>
        <fo:inline>. Our data showing that the inflammation-induced recruitment of effector CD4+ T cells into the inflamed liver can be modified by treatment with a clathrin inhibitor led us to the assumption that endothelial chemokine supply by transcytosis or production plays an important role in the regulation of local inflammation. In this light, it is tempting to speculate that interventions in these processes during liver inflammation could be a target for inhibition of lymphocyte infiltration thereby counteracting immunopathology.</fo:inline>
      </fo:block>
      <fo:block font-family="DroidSans" font-size="10pt" font-weight="bold" padding-top="9pt">
        <fo:inline>Hepatic T-cell activation after administration of CPZ.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>Mice were treated with Con A and received CPZ 60 min after hepatitis induction. NPC isolated 6 h after Con A treatment and stained for CD4, CD90.2, CD69 and IFN-γ were assessed by flow cytometry. (A) GMFI of CD69 was determined on gated CD90.2</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
        <fo:inline> or CD4</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
        <fo:inline> T cells. (B) Percentages of CD90.2</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
        <fo:inline> and CD4</fo:inline>
        <fo:inline vertical-align="super" font-size="8pt">+</fo:inline>
        <fo:inline> T cells expressing IFN-γ were detected. Representative plots and mean values ± SD of 2–4 independent experiments with three mice per group are shown. * p&amp;lt; 0.05; ns, not significant.</fo:inline>
      </fo:block>
      <fo:block font-family="Gentium" padding="6pt" font-size="10pt" line-height="1.5">
        <fo:inline>(TIF)</fo:inline>
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
                <fo:inline>EC Butcher</fo:inline>
                <fo:inline>(1991)</fo:inline>
                <fo:inline>Leukocyte-endothelial cell recognition: three (or more) steps to specificity and diversity</fo:inline>
                <fo:inline>Cell</fo:inline>
                <fo:inline>67:</fo:inline>
                <fo:inline>1033-1036</fo:inline>
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
                <fo:inline>K Ley, C Laudanna, MI Cybulsky, S Nourshargh</fo:inline>
                <fo:inline>(2007)</fo:inline>
                <fo:inline>Getting to the site of inflammation: the leukocyte adhesion cascade updated</fo:inline>
                <fo:inline>Nat Rev Immunol</fo:inline>
                <fo:inline>7:</fo:inline>
                <fo:inline>678-689</fo:inline>
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
                <fo:inline>JJ Campbell, J Hedrick, A Zlotnik, MA Siani, DA Thompson, EC Butcher</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>Chemokines and the arrest of lymphocytes rolling under flow conditions</fo:inline>
                <fo:inline>Science</fo:inline>
                <fo:inline>279:</fo:inline>
                <fo:inline>381-384</fo:inline>
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
                <fo:inline>R Shamri, V Grabovsky, JM Gauguet, S Feigelson, E Manevich, W Kolanus</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline>Lymphocyte arrest requires instantaneous induction of an extended LFA-1 conformation mediated by endothelium-bound chemokines</fo:inline>
                <fo:inline>Nat Immunol</fo:inline>
                <fo:inline>6:</fo:inline>
                <fo:inline>497-506</fo:inline>
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
                <fo:inline>I Mellman</fo:inline>
                <fo:inline>(1996)</fo:inline>
                <fo:inline>Endocytosis and molecular sorting</fo:inline>
                <fo:inline>Annu Rev Cell Dev Biol</fo:inline>
                <fo:inline>12:</fo:inline>
                <fo:inline>575-625</fo:inline>
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
                <fo:inline>P Tuma, AL Hubbard</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Transcytosis: crossing cellular barriers</fo:inline>
                <fo:inline>Physiol Rev</fo:inline>
                <fo:inline>83:</fo:inline>
                <fo:inline>871-932</fo:inline>
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
                <fo:inline>C Gerard, BJ Rollins</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline>Chemokines and disease</fo:inline>
                <fo:inline>Nat Immunol</fo:inline>
                <fo:inline>2:</fo:inline>
                <fo:inline>108-115</fo:inline>
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
                <fo:inline>B Moser, M Wolf, A Walz, P Loetscher</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Chemokines: multiple levels of leukocyte migration control</fo:inline>
                <fo:inline>Trends Immunol</fo:inline>
                <fo:inline>25:</fo:inline>
                <fo:inline>75-84</fo:inline>
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
                <fo:inline>M Meyer, PJ Hensbergen, EM van der Raaij-Helmer, G Brandacher, R Margreiter, C Heufler</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline>Cross reactivity of three T cell attracting murine chemokines stimulating the CXC chemokine receptor CXCR3 and their induction in cultured cells and during allograft rejection</fo:inline>
                <fo:inline>Eur J Immunol</fo:inline>
                <fo:inline>31:</fo:inline>
                <fo:inline>2521-2527</fo:inline>
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
                <fo:inline>K Arai, ZX Liu, T Lane, G Dennert</fo:inline>
                <fo:inline>(2002)</fo:inline>
                <fo:inline>IP-10 and Mig facilitate accumulation of T cells in the virus-infected liver</fo:inline>
                <fo:inline>Cell Immunol</fo:inline>
                <fo:inline>219:</fo:inline>
                <fo:inline>48-56</fo:inline>
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
                <fo:inline>WW Hancock, B Lu, W Gao, V Csizmadia, K Faia, JA King</fo:inline>
                <fo:inline>(2000)</fo:inline>
                <fo:inline>Requirement of the chemokine receptor CXCR3 for acute allograft rejection</fo:inline>
                <fo:inline>J Exp Med</fo:inline>
                <fo:inline>192:</fo:inline>
                <fo:inline>1515-1520</fo:inline>
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
                <fo:inline>IA Khan, JA MacLean, FS Lee, L Casciotti, E DeHaan, JD Schwartzman</fo:inline>
                <fo:inline>(2000)</fo:inline>
                <fo:inline>IP-10 is critical for effector T cell trafficking and host survival in Toxoplasma gondii infection</fo:inline>
                <fo:inline>Immunity</fo:inline>
                <fo:inline>12:</fo:inline>
                <fo:inline>483-494</fo:inline>
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
                <fo:inline>F Marra</fo:inline>
                <fo:inline>(2002)</fo:inline>
                <fo:inline>Chemokines in liver inflammation and fibrosis</fo:inline>
                <fo:inline>Front Biosci</fo:inline>
                <fo:inline>7:</fo:inline>
                <fo:inline>d1899-1914</fo:inline>
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
                <fo:inline>PF Lalor, P Shields, A Grant, DH Adams</fo:inline>
                <fo:inline>(2002)</fo:inline>
                <fo:inline>Recruitment of lymphocytes to the human liver</fo:inline>
                <fo:inline>Immunol Cell Biol</fo:inline>
                <fo:inline>80:</fo:inline>
                <fo:inline>52-64</fo:inline>
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
                <fo:inline>S Shetty, CJ Weston, YH Oo, N Westerlund, Z Stamataki, J Youster</fo:inline>
                <fo:inline>(2011)</fo:inline>
                <fo:inline>Common lymphatic endothelial and vascular endothelial receptor-1 mediates the transmigration of regulatory T cells across human hepatic sinusoidal endothelium</fo:inline>
                <fo:inline>J Immunol</fo:inline>
                <fo:inline>186:</fo:inline>
                <fo:inline>4147-4155</fo:inline>
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
                <fo:inline>WY Lee, P Kubes</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>Leukocyte adhesion in the liver: distinct adhesion paradigm from other organs</fo:inline>
                <fo:inline>J Hepatol</fo:inline>
                <fo:inline>48:</fo:inline>
                <fo:inline>504-512</fo:inline>
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
                <fo:inline>PJ MacPhee, EE Schmidt, AC Groom</fo:inline>
                <fo:inline>(1995)</fo:inline>
                <fo:inline>Intermittence of blood flow in liver sinusoids, studied by high-resolution in vivo microscopy</fo:inline>
                <fo:inline>Am J Physiol</fo:inline>
                <fo:inline>269:</fo:inline>
                <fo:inline>G692-698</fo:inline>
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
                <fo:inline>A Schrage, K Wechsung, K Neumann, M Schumann, JD Schulzke, B Engelhardt</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>Enhanced T cell transmigration across the murine liver sinusoidal endothelium is mediated by transcytosis and surface presentation of chemokines</fo:inline>
                <fo:inline>Hepatology</fo:inline>
                <fo:inline>48:</fo:inline>
                <fo:inline>1262-1272</fo:inline>
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
                <fo:inline>A Schrage, C Loddenkemper, U Erben, U Lauer, G Hausdorf, PR Jungblut</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>Murine CD146 is widely expressed on endothelial cells and is recognized by the monoclonal antibody ME-9F1</fo:inline>
                <fo:inline>Histochem Cell Biol</fo:inline>
                <fo:inline>129:</fo:inline>
                <fo:inline>441-451</fo:inline>
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
                <fo:inline>K Neumann, N Kruse, B Szilagyi, U Erben, C Rudolph, A Flach</fo:inline>
                <fo:inline>(2012)</fo:inline>
                <fo:inline>Connecting liver and gut: murine liver sinusoidal endothelium induces gut tropism of CD4+ T cells via retinoic acid</fo:inline>
                <fo:inline>Hepatology</fo:inline>
                <fo:inline>55:</fo:inline>
                <fo:inline>1976-1984</fo:inline>
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
                <fo:inline>C Chen, X Zhuang</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>Epsin 1 is a cargo-specific adaptor for the clathrin-mediated endocytosis of the influenza virus</fo:inline>
                <fo:inline>Proc Natl Acad Sci U S A</fo:inline>
                <fo:inline>105:</fo:inline>
                <fo:inline>11790-11795</fo:inline>
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
                <fo:inline>A Hayer, M Stoeber, C Bissig, A Helenius</fo:inline>
                <fo:inline>(2010)</fo:inline>
                <fo:inline>Biogenesis of caveolae: stepwise assembly of large caveolin and cavin complexes</fo:inline>
                <fo:inline>Traffic</fo:inline>
                <fo:inline>11:</fo:inline>
                <fo:inline>361-382</fo:inline>
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
                <fo:inline>T Stroh, U Erben, AA Kuhl, M Zeitz, B Siegmund</fo:inline>
                <fo:inline>(2010)</fo:inline>
                <fo:inline>Combined pulse electroporation—a novel strategy for highly efficient transfection of human and mouse cells</fo:inline>
                <fo:inline>PLoS One</fo:inline>
                <fo:inline>5:</fo:inline>
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
                <fo:inline>KJ Livak, TD Schmittgen</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline>Analysis of relative gene expression data using real-time quantitative PCR and the 2(-Delta Delta C(T)) Method</fo:inline>
                <fo:inline>Methods</fo:inline>
                <fo:inline>25:</fo:inline>
                <fo:inline>402-408</fo:inline>
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
                <fo:inline>LH Wang, KG Rothberg, RG Anderson</fo:inline>
                <fo:inline>(1993)</fo:inline>
                <fo:inline>Mis-assembly of clathrin lattices on endosomes reveals a regulatory switch for coated pit formation</fo:inline>
                <fo:inline>J Cell Biol</fo:inline>
                <fo:inline>123:</fo:inline>
                <fo:inline>1107-1117</fo:inline>
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
                <fo:inline>KG Rothberg, YS Ying, BA Kamen, RG Anderson</fo:inline>
                <fo:inline>(1990)</fo:inline>
                <fo:inline>Cholesterol controls the clustering of the glycophospholipid-anchored membrane receptor for 5-methyltetrahydrofolate</fo:inline>
                <fo:inline>J Cell Biol</fo:inline>
                <fo:inline>111:</fo:inline>
                <fo:inline>2931-2938</fo:inline>
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
                <fo:inline>GA Donzella, D Schols, SW Lin, JA Este, KA Nagashima, PJ Maddon</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>AMD3100, a small molecule inhibitor of HIV-1 entry via the CXCR4 co-receptor</fo:inline>
                <fo:inline>Nat Med</fo:inline>
                <fo:inline>4:</fo:inline>
                <fo:inline>72-77</fo:inline>
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
                <fo:inline>A Hamann, K Klugewitz, F Austrup, D Jablonski-Westrich</fo:inline>
                <fo:inline>(2000)</fo:inline>
                <fo:inline>Activation induces rapid and profound alterations in the trafficking of T cells</fo:inline>
                <fo:inline>Eur J Immunol</fo:inline>
                <fo:inline>30:</fo:inline>
                <fo:inline>3207-3218</fo:inline>
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
                <fo:inline>M Baggiolini</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline>Chemokines in pathology and medicine</fo:inline>
                <fo:inline>J Intern Med</fo:inline>
                <fo:inline>250:</fo:inline>
                <fo:inline>91-104</fo:inline>
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
                <fo:inline>CE Harvey, JJ Post, P Palladinetti, AJ Freeman, RA Ffrench, RK Kumar</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Expression of the chemokine IP-10 (CXCL10) by hepatocytes in chronic hepatitis C virus infection correlates with histological severity and lobular inflammation</fo:inline>
                <fo:inline>J Leukoc Biol</fo:inline>
                <fo:inline>74:</fo:inline>
                <fo:inline>360-369</fo:inline>
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
                <fo:inline>CT Okamoto</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>Endocytosis and transcytosis</fo:inline>
                <fo:inline>Adv Drug Deliv Rev</fo:inline>
                <fo:inline>29:</fo:inline>
                <fo:inline>215-228</fo:inline>
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
                <fo:inline>S Christoforidis, HM McBride, RD Burgoyne, M Zerial</fo:inline>
                <fo:inline>(1999)</fo:inline>
                <fo:inline>The Rab5 effector EEA1 is a core component of endosome docking</fo:inline>
                <fo:inline>Nature</fo:inline>
                <fo:inline>397:</fo:inline>
                <fo:inline>621-625</fo:inline>
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
                <fo:inline>H Kobayashi, M Fukuda</fo:inline>
                <fo:inline>(2013)</fo:inline>
                <fo:inline>Arf6, Rab11 and transferrin receptor define distinct populations of recycling endosomes</fo:inline>
                <fo:inline>Commun Integr Biol</fo:inline>
                <fo:inline>6:</fo:inline>
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
                <fo:inline>EL Eskelinen</fo:inline>
                <fo:inline>(2006)</fo:inline>
                <fo:inline>Roles of LAMP-1 and LAMP-2 in lysosome biogenesis and autophagy</fo:inline>
                <fo:inline>Mol Aspects Med</fo:inline>
                <fo:inline>27:</fo:inline>
                <fo:inline>495-502</fo:inline>
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
                <fo:inline>JL Goldstein, MS Brown</fo:inline>
                <fo:inline>(1977)</fo:inline>
                <fo:inline>Atherosclerosis: the low-density lipoprotein receptor hypothesis</fo:inline>
                <fo:inline>Metabolism</fo:inline>
                <fo:inline>26:</fo:inline>
                <fo:inline>1257-1275</fo:inline>
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
                <fo:inline>YH Oo, DH Adams</fo:inline>
                <fo:inline>(2010)</fo:inline>
                <fo:inline>The role of chemokines in the recruitment of lymphocytes to the liver</fo:inline>
                <fo:inline>J Autoimmun</fo:inline>
                <fo:inline>34:</fo:inline>
                <fo:inline>45-54</fo:inline>
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
                <fo:inline>M Zeremski, LM Petrovic, L Chiriboga, QB Brown, HT Yee, M Kinkhabwala</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>Intrahepatic levels of CXCR3-associated chemokines correlate with liver inflammation and fibrosis in chronic hepatitis C</fo:inline>
                <fo:inline>Hepatology</fo:inline>
                <fo:inline>48:</fo:inline>
                <fo:inline>1440-1450</fo:inline>
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
                <fo:inline>S Goddard, A Williams, C Morland, S Qin, R Gladue, SG Hubscher</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline>Differential expression of chemokines and chemokine receptors shapes the inflammatory response in rejecting human liver transplants</fo:inline>
                <fo:inline>Transplantation</fo:inline>
                <fo:inline>72:</fo:inline>
                <fo:inline>1957-1967</fo:inline>
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
                <fo:inline>YH Oo, V Banz, D Kavanagh, E Liaskou, DR Withers, E Humphreys</fo:inline>
                <fo:inline>(2012)</fo:inline>
                <fo:inline>CXCR3-dependent recruitment and CCR6-mediated positioning of Th-17 cells in the inflamed liver</fo:inline>
                <fo:inline>J Hepatol</fo:inline>
                <fo:inline>57:</fo:inline>
                <fo:inline>1044-1051</fo:inline>
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
                <fo:inline>PL Shields, CM Morland, M Salmon, S Qin, SG Hubscher, DH Adams</fo:inline>
                <fo:inline>(1999)</fo:inline>
                <fo:inline>Chemokine and chemokine receptor interactions provide a mechanism for selective T cell recruitment to specific liver compartments within hepatitis C-infected liver</fo:inline>
                <fo:inline>J Immunol</fo:inline>
                <fo:inline>163:</fo:inline>
                <fo:inline>6236-6243</fo:inline>
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
                <fo:inline>KF Yoong, SC Afford, R Jones, P Aujla, S Qin, K Price</fo:inline>
                <fo:inline>(1999)</fo:inline>
                <fo:inline>Expression and function of CXC and CC chemokines in human malignant liver tumors: a role for human monokine induced by gamma-interferon in lymphocyte recruitment to hepatocellular carcinoma</fo:inline>
                <fo:inline>Hepatology</fo:inline>
                <fo:inline>30:</fo:inline>
                <fo:inline>100-111</fo:inline>
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
                <fo:inline>SM Curbishley, B Eksteen, RP Gladue, P Lalor, DH Adams</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline>CXCR 3 activation promotes lymphocyte transendothelial migration across human hepatic endothelium under fluid flow</fo:inline>
                <fo:inline>Am J Pathol</fo:inline>
                <fo:inline>167:</fo:inline>
                <fo:inline>887-899</fo:inline>
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
                <fo:inline>M Heydtmann, PF Lalor, JA Eksteen, SG Hubscher, M Briskin, DH Adams</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline>CXC chemokine ligand 16 promotes integrin-mediated adhesion of liver-infiltrating lymphocytes to cholangiocytes and hepatocytes within the inflamed human liver</fo:inline>
                <fo:inline>J Immunol</fo:inline>
                <fo:inline>174:</fo:inline>
                <fo:inline>1055-1062</fo:inline>
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
                <fo:inline>JJ Maher, JS Lozier, MK Scott</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>Rat hepatic stellate cells produce cytokine-induced neutrophil chemoattractant in culture and in vivo</fo:inline>
                <fo:inline>Am J Physiol</fo:inline>
                <fo:inline>275:</fo:inline>
                <fo:inline>G847-853</fo:inline>
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
                <fo:inline>RF Schwabe, R Bataller, DA Brenner</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>Human hepatic stellate cells express CCR5 and RANTES to induce proliferation and migration</fo:inline>
                <fo:inline>Am J Physiol Gastrointest Liver Physiol</fo:inline>
                <fo:inline>285:</fo:inline>
                <fo:inline>G949-958</fo:inline>
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
                <fo:inline>ES Baekkevold, T Yamanaka, RT Palframan, HS Carlsen, FP Reinholt, UH von Andrian</fo:inline>
                <fo:inline>(2001)</fo:inline>
                <fo:inline>The CCR7 ligand elc (CCL19) is transcytosed in high endothelial venules and mediates T cell recruitment</fo:inline>
                <fo:inline>J Exp Med</fo:inline>
                <fo:inline>193:</fo:inline>
                <fo:inline>1105-1112</fo:inline>
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
                <fo:inline>A Dar, P Goichberg, V Shinder, A Kalinkovich, O Kollet, N Netzer</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline>Chemokine receptor CXCR4-dependent internalization and resecretion of functional chemokine SDF-1 by bone marrow endothelial and stromal cells</fo:inline>
                <fo:inline>Nat Immunol</fo:inline>
                <fo:inline>6:</fo:inline>
                <fo:inline>1038-1046</fo:inline>
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
                <fo:inline>S Ge, L Song, DR Serwanski, WA Kuziel, JS Pachter</fo:inline>
                <fo:inline>(2008)</fo:inline>
                <fo:inline>Transcellular transport of CCL2 across brain microvascular endothelial cells</fo:inline>
                <fo:inline>J Neurochem</fo:inline>
                <fo:inline>104:</fo:inline>
                <fo:inline>1219-1232</fo:inline>
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
                <fo:inline>J Middleton, S Neil, J Wintle, I Clark-Lewis, H Moore, C Lam</fo:inline>
                <fo:inline>(1997)</fo:inline>
                <fo:inline>Transcytosis and surface presentation of IL-8 by venular endothelial cells</fo:inline>
                <fo:inline>Cell</fo:inline>
                <fo:inline>91:</fo:inline>
                <fo:inline>385-395</fo:inline>
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
                <fo:inline>E Mordelet, HA Davies, P Hillyer, IA Romero, D Male</fo:inline>
                <fo:inline>(2007)</fo:inline>
                <fo:inline>Chemokine transport across human vascular endothelial cells</fo:inline>
                <fo:inline>Endothelium</fo:inline>
                <fo:inline>14:</fo:inline>
                <fo:inline>7-15</fo:inline>
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
                <fo:inline>AJ Hoogewerf, GS Kuschert, AE Proudfoot, F Borlat, I Clark-Lewis, CA Power</fo:inline>
                <fo:inline>(1997)</fo:inline>
                <fo:inline>Glycosaminoglycans mediate cell surface oligomerization of chemokines</fo:inline>
                <fo:inline>Biochemistry</fo:inline>
                <fo:inline>36:</fo:inline>
                <fo:inline>13570-13578</fo:inline>
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
                <fo:inline>Y Tanaka, K Fujii, S Hubscher, M Aso, A Takazawa, K Saito</fo:inline>
                <fo:inline>(1998)</fo:inline>
                <fo:inline>Heparan sulfate proteoglycan on endothelium efficiently induces integrin-mediated T cell adhesion by immobilizing chemokines in patients with rheumatoid synovitis</fo:inline>
                <fo:inline>Arthritis Rheum</fo:inline>
                <fo:inline>41:</fo:inline>
                <fo:inline>1365-1377</fo:inline>
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
                <fo:inline>C Murdoch, PN Monk, A Finn</fo:inline>
                <fo:inline>(1999)</fo:inline>
                <fo:inline>Cxc chemokine receptor expression on human endothelial cells</fo:inline>
                <fo:inline>Cytokine</fo:inline>
                <fo:inline>11:</fo:inline>
                <fo:inline>704-712</fo:inline>
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
                <fo:inline>O Wald, O Pappo, R Safadi, M Dagan-Berger, K Beider, H Wald</fo:inline>
                <fo:inline>(2004)</fo:inline>
                <fo:inline>Involvement of the CXCL12/CXCR4 pathway in the advanced liver disease that is associated with hepatitis C virus or hepatitis B virus</fo:inline>
                <fo:inline>Eur J Immunol</fo:inline>
                <fo:inline>34:</fo:inline>
                <fo:inline>1164-1174</fo:inline>
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
                <fo:inline>M Pruenster, L Mudde, P Bombosi, S Dimitrova, M Zsak, J Middleton</fo:inline>
                <fo:inline>(2009)</fo:inline>
                <fo:inline>The Duffy antigen receptor for chemokines transports chemokines and supports their promigratory activity</fo:inline>
                <fo:inline>Nat Immunol</fo:inline>
                <fo:inline>10:</fo:inline>
                <fo:inline>101-108</fo:inline>
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
                <fo:inline>A Rot</fo:inline>
                <fo:inline>(2003)</fo:inline>
                <fo:inline>In situ binding assay for studying chemokine interactions with endothelial cells</fo:inline>
                <fo:inline>J Immunol Methods</fo:inline>
                <fo:inline>273:</fo:inline>
                <fo:inline>63-71</fo:inline>
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
                <fo:inline>L Wang, M Fuster, P Sriramarao, JD Esko</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline>Endothelial heparan sulfate deficiency impairs L-selectin- and chemokine-mediated neutrophil trafficking during inflammatory responses</fo:inline>
                <fo:inline>Nat Immunol</fo:inline>
                <fo:inline>6:</fo:inline>
                <fo:inline>902-910</fo:inline>
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
                <fo:inline>A Erhardt, C Wegscheid, B Claass, A Carambia, J Herkel, HW Mittrücker</fo:inline>
                <fo:inline>(2011)</fo:inline>
                <fo:inline>CXCR3 deficiency exacerbates liver disease and abrogates tolerance in a mouse model of immune-mediated hepatitis</fo:inline>
                <fo:inline>J Immunol</fo:inline>
                <fo:inline>186:</fo:inline>
                <fo:inline>5284-5293</fo:inline>
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
                <fo:inline>N Signoret, L Hewlett, S Wavre, A Pelchen-Matthews, M Oppermann, M Marsh</fo:inline>
                <fo:inline>(2005)</fo:inline>
                <fo:inline>Agonist-induced endocytosis of CC chemokine receptor 5 is clathrin dependent</fo:inline>
                <fo:inline>Mol Biol Cell</fo:inline>
                <fo:inline>16:</fo:inline>
                <fo:inline>902-917</fo:inline>
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
                <fo:inline>W Yang, D Wang, A Richmond</fo:inline>
                <fo:inline>(1999)</fo:inline>
                <fo:inline>Role of clathrin-mediated endocytosis in CXCR2 sequestration, resensitization, and signal transduction</fo:inline>
                <fo:inline>J Biol Chem</fo:inline>
                <fo:inline>274:</fo:inline>
                <fo:inline>11328-11333</fo:inline>
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
                <fo:inline>K Ikeda, M Hirano, A Orita, M Takeuchi</fo:inline>
                <fo:inline>(1997)</fo:inline>
                <fo:inline>Chlorpromazine inhibits concanavalin A-induced liver injury independently of cytokine modulation</fo:inline>
                <fo:inline>Immunol Lett</fo:inline>
                <fo:inline>55:</fo:inline>
                <fo:inline>127-131</fo:inline>
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
        </fo:list-block>
      </fo:block>
      <fo:block font-family="Gentium" font-weight="normal" font-style="normal" font-size="9pt" line-height="2" text-indent="34pt">
        <fo:inline>We are grateful to Katja Grollich, Simone Spieckermann and Claudia May for excellent technical assistance. We would like to thank PD Dr. Uta Höpken for providing CXCR3-/- mice.</fo:inline>
      </fo:block>
    </fo:flow>
  </fo:page-sequence>
</fo:root>
