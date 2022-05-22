<map version="freeplane 1.9.13">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Visualisierungen" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1652611700892" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="2.143">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" associatedTemplateLocation="template:/standard-1.6.mm" show_icon_for_attributes="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="7" RULE="ON_BRANCH_CREATION"/>
<node TEXT="single Feature" POSITION="right" ID="ID_649223309" CREATED="1652612324010" MODIFIED="1652613087867">
<edge COLOR="#00ffff"/>
<font SIZE="11"/>
<node TEXT="metrische Features" ID="ID_1444534974" CREATED="1652611701363" MODIFIED="1652612337584">
<node TEXT="mean, (stdabw), percentile" ID="ID_991447556" CREATED="1652611736234" MODIFIED="1652612533138"/>
<node TEXT="histplot" ID="ID_249198876" CREATED="1652611721291" MODIFIED="1652612117332" BACKGROUND_COLOR="#00ff99"/>
<node TEXT="boxplot" ID="ID_1662066719" CREATED="1652611768730" MODIFIED="1652612099491" BACKGROUND_COLOR="#00ff99"/>
<node TEXT="swarmplot" ID="ID_1003608237" CREATED="1652612081978" MODIFIED="1652612093759" BACKGROUND_COLOR="#00ff99"/>
<node TEXT="violinplot" ID="ID_1123572042" CREATED="1652612181329" MODIFIED="1652612198080" BACKGROUND_COLOR="#00ff99"/>
</node>
<node TEXT="kategoriale Featues" ID="ID_1089515376" CREATED="1652611782090" MODIFIED="1652612335792">
<node TEXT="counts" ID="ID_1223628196" CREATED="1652611800373" MODIFIED="1652611813043"/>
<node TEXT="countplot" ID="ID_1104274555" CREATED="1652611834850" MODIFIED="1652612169043" BACKGROUND_COLOR="#00ff99"/>
</node>
</node>
<node TEXT="metrisch - metrisch" POSITION="right" ID="ID_1962975899" CREATED="1652611865361" MODIFIED="1652613084850">
<edge COLOR="#00ff00"/>
<font SIZE="11"/>
<node TEXT="relplot" ID="ID_1916618067" CREATED="1652611877299" MODIFIED="1652612144132" BACKGROUND_COLOR="#00ff99"/>
<node TEXT="pairplot" ID="ID_1210944439" CREATED="1652611976593" MODIFIED="1652612373522" BACKGROUND_COLOR="#00ff99"/>
</node>
<node TEXT="kategorial - metrisch" POSITION="right" ID="ID_1470086019" CREATED="1652612428954" MODIFIED="1652613083171">
<edge COLOR="#7c0000"/>
<font SIZE="11"/>
<node TEXT="catplot" ID="ID_1995545299" CREATED="1652612460755" MODIFIED="1652612468802" BACKGROUND_COLOR="#00ff99"/>
<node TEXT="Kategorie als hue in metrischen Plots einsetzen" ID="ID_1489850854" CREATED="1652612567425" MODIFIED="1652612912722"/>
</node>
</node>
</map>
