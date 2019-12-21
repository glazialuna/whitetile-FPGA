<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="_D3" />
        <signal name="_D1" />
        <signal name="_D0" />
        <signal name="point" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="_D2" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="LE" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="and4" name="XLXI_1">
            <blockpin signalname="_D0" name="I0" />
            <blockpin signalname="_D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_2">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="_D3" name="I3" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_17">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="_D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="_D3" name="I3" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_21">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="_D1" name="I1" />
            <blockpin signalname="_D2" name="I2" />
            <blockpin signalname="_D3" name="I3" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_22">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_3" name="I2" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_23">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_24">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_17" name="I2" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_25">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_26">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_21" name="I3" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_27">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_15" name="I3" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_28">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_21" name="I3" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_29">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="_D3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_30">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="_D2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_31">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="_D1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_32">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="_D0" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_33">
            <blockpin signalname="_D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_34">
            <blockpin signalname="_D0" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_35">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_36">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_37">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_38">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="_D1" name="I1" />
            <blockpin signalname="_D2" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_39">
            <blockpin signalname="_D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="_D3" name="I2" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_40">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="_D3" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_41">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="_D2" name="I1" />
            <blockpin signalname="_D3" name="I2" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_42">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="_D2" name="I1" />
            <blockpin signalname="_D3" name="I2" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_43">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="_D3" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_44">
            <blockpin signalname="_D1" name="I0" />
            <blockpin signalname="_D2" name="I1" />
            <blockpin signalname="_D3" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_45">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_46">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_48">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_49">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_50">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_51">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_52">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_53">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="_D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_55">
            <blockpin signalname="_D0" name="I0" />
            <blockpin signalname="_D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="_D3" name="I3" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_56">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="_D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_57">
            <blockpin signalname="_D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="_D2" name="I2" />
            <blockpin signalname="_D3" name="I3" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_58">
            <blockpin signalname="_D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="_D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="432" y="2944" name="XLXI_2" orien="R90" />
        <instance x="192" y="2944" name="XLXI_1" orien="R90" />
        <instance x="464" y="3344" name="XLXI_22" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="592" y1="3200" y2="3344" x1="592" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="352" y1="3200" y2="3344" x1="352" />
            <wire x2="528" y1="3344" y2="3344" x1="352" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="864" y1="3344" y2="3344" x1="656" />
            <wire x2="864" y1="3200" y2="3344" x1="864" />
        </branch>
        <instance x="4368" y="2944" name="XLXI_17" orien="R90" />
        <instance x="5408" y="2944" name="XLXI_21" orien="R90" />
        <instance x="1472" y="3344" name="XLXI_25" orien="R90" />
        <branch name="XLXN_4">
            <wire x2="1136" y1="3200" y2="3344" x1="1136" />
            <wire x2="1536" y1="3344" y2="3344" x1="1136" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1392" y1="3200" y2="3264" x1="1392" />
            <wire x2="1600" y1="3264" y2="3264" x1="1392" />
            <wire x2="1600" y1="3264" y2="3344" x1="1600" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1664" y1="3200" y2="3344" x1="1664" />
        </branch>
        <instance x="2064" y="3344" name="XLXI_23" orien="R90" />
        <branch name="XLXN_7">
            <wire x2="2192" y1="3200" y2="3344" x1="2192" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1920" y1="3200" y2="3344" x1="1920" />
            <wire x2="2128" y1="3344" y2="3344" x1="1920" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2448" y1="3344" y2="3344" x1="2256" />
            <wire x2="2448" y1="3200" y2="3344" x1="2448" />
        </branch>
        <instance x="2784" y="3360" name="XLXI_26" orien="R90" />
        <branch name="XLXN_10">
            <wire x2="2720" y1="3200" y2="3360" x1="2720" />
            <wire x2="2848" y1="3360" y2="3360" x1="2720" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2912" y1="3280" y2="3360" x1="2912" />
            <wire x2="2976" y1="3280" y2="3280" x1="2912" />
            <wire x2="2976" y1="3200" y2="3280" x1="2976" />
        </branch>
        <instance x="3360" y="3360" name="XLXI_24" orien="R90" />
        <branch name="XLXN_12">
            <wire x2="3488" y1="3200" y2="3360" x1="3488" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="3232" y1="3200" y2="3360" x1="3232" />
            <wire x2="3424" y1="3360" y2="3360" x1="3232" />
        </branch>
        <instance x="4080" y="3360" name="XLXI_27" orien="R90" />
        <branch name="XLXN_14">
            <wire x2="4272" y1="3200" y2="3360" x1="4272" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="4528" y1="3360" y2="3360" x1="4336" />
            <wire x2="4528" y1="3200" y2="3360" x1="4528" />
        </branch>
        <instance x="5008" y="3360" name="XLXI_28" orien="R90" />
        <branch name="XLXN_18">
            <wire x2="4784" y1="3200" y2="3360" x1="4784" />
            <wire x2="5072" y1="3360" y2="3360" x1="4784" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="5568" y1="3328" y2="3328" x1="3040" />
            <wire x2="5568" y1="3328" y2="3360" x1="5568" />
            <wire x2="3040" y1="3328" y2="3360" x1="3040" />
            <wire x2="5568" y1="3360" y2="3360" x1="5264" />
            <wire x2="5568" y1="3200" y2="3328" x1="5568" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2976" y1="3296" y2="3360" x1="2976" />
            <wire x2="5200" y1="3296" y2="3296" x1="2976" />
            <wire x2="5200" y1="3296" y2="3360" x1="5200" />
            <wire x2="5312" y1="3296" y2="3296" x1="5200" />
            <wire x2="5312" y1="3200" y2="3296" x1="5312" />
        </branch>
        <instance x="5648" y="1936" name="XLXI_29" orien="R90" />
        <instance x="5440" y="1936" name="XLXI_30" orien="R90" />
        <instance x="5200" y="1936" name="XLXI_31" orien="R90" />
        <instance x="4992" y="1936" name="XLXI_32" orien="R90" />
        <branch name="D0">
            <wire x2="1072" y1="1760" y2="1760" x1="496" />
            <wire x2="1600" y1="1760" y2="1760" x1="1072" />
            <wire x2="1856" y1="1760" y2="1760" x1="1600" />
            <wire x2="2416" y1="1760" y2="1760" x1="1856" />
            <wire x2="2912" y1="1760" y2="1760" x1="2416" />
            <wire x2="2912" y1="1760" y2="2944" x1="2912" />
            <wire x2="3696" y1="1760" y2="1760" x1="2912" />
            <wire x2="3696" y1="1760" y2="2944" x1="3696" />
            <wire x2="4432" y1="1760" y2="1760" x1="3696" />
            <wire x2="4432" y1="1760" y2="2944" x1="4432" />
            <wire x2="4688" y1="1760" y2="1760" x1="4432" />
            <wire x2="4944" y1="1760" y2="1760" x1="4688" />
            <wire x2="5024" y1="1760" y2="1760" x1="4944" />
            <wire x2="5440" y1="1760" y2="1760" x1="5024" />
            <wire x2="5440" y1="1760" y2="2944" x1="5440" />
            <wire x2="5472" y1="2944" y2="2944" x1="5440" />
            <wire x2="5024" y1="1760" y2="1936" x1="5024" />
            <wire x2="4944" y1="1760" y2="2944" x1="4944" />
            <wire x2="4960" y1="2944" y2="2944" x1="4944" />
            <wire x2="4688" y1="1760" y2="2944" x1="4688" />
            <wire x2="2416" y1="1760" y2="2944" x1="2416" />
            <wire x2="1856" y1="1760" y2="2944" x1="1856" />
            <wire x2="1600" y1="1760" y2="2944" x1="1600" />
            <wire x2="1072" y1="1760" y2="2944" x1="1072" />
            <wire x2="496" y1="1760" y2="2944" x1="496" />
            <wire x2="5024" y1="1408" y2="1760" x1="5024" />
        </branch>
        <branch name="D1">
            <wire x2="1136" y1="1808" y2="1808" x1="560" />
            <wire x2="1328" y1="1808" y2="1808" x1="1136" />
            <wire x2="2688" y1="1808" y2="1808" x1="1328" />
            <wire x2="2976" y1="1808" y2="1808" x1="2688" />
            <wire x2="3168" y1="1808" y2="1808" x1="2976" />
            <wire x2="3168" y1="1808" y2="2944" x1="3168" />
            <wire x2="3456" y1="1808" y2="1808" x1="3168" />
            <wire x2="3456" y1="1808" y2="2944" x1="3456" />
            <wire x2="3760" y1="1808" y2="1808" x1="3456" />
            <wire x2="4272" y1="1808" y2="1808" x1="3760" />
            <wire x2="4752" y1="1808" y2="1808" x1="4272" />
            <wire x2="4752" y1="1808" y2="2944" x1="4752" />
            <wire x2="5232" y1="1808" y2="1808" x1="4752" />
            <wire x2="5232" y1="1808" y2="1936" x1="5232" />
            <wire x2="4272" y1="1808" y2="2944" x1="4272" />
            <wire x2="3760" y1="1808" y2="2944" x1="3760" />
            <wire x2="2976" y1="1808" y2="2944" x1="2976" />
            <wire x2="2688" y1="1808" y2="2944" x1="2688" />
            <wire x2="1328" y1="1808" y2="2944" x1="1328" />
            <wire x2="1136" y1="1808" y2="2944" x1="1136" />
            <wire x2="560" y1="1808" y2="2944" x1="560" />
            <wire x2="5232" y1="1392" y2="1808" x1="5232" />
        </branch>
        <branch name="D2">
            <wire x2="624" y1="1888" y2="1888" x1="384" />
            <wire x2="2192" y1="1888" y2="1888" x1="624" />
            <wire x2="2192" y1="1888" y2="2944" x1="2192" />
            <wire x2="3040" y1="1888" y2="1888" x1="2192" />
            <wire x2="3232" y1="1888" y2="1888" x1="3040" />
            <wire x2="3232" y1="1888" y2="2944" x1="3232" />
            <wire x2="4016" y1="1888" y2="1888" x1="3232" />
            <wire x2="4336" y1="1888" y2="1888" x1="4016" />
            <wire x2="4560" y1="1888" y2="1888" x1="4336" />
            <wire x2="4560" y1="1888" y2="2944" x1="4560" />
            <wire x2="5088" y1="1888" y2="1888" x1="4560" />
            <wire x2="5088" y1="1888" y2="2944" x1="5088" />
            <wire x2="5344" y1="1888" y2="1888" x1="5088" />
            <wire x2="5472" y1="1888" y2="1888" x1="5344" />
            <wire x2="5472" y1="1888" y2="1936" x1="5472" />
            <wire x2="5344" y1="1888" y2="2944" x1="5344" />
            <wire x2="4336" y1="1888" y2="2944" x1="4336" />
            <wire x2="4016" y1="1888" y2="2944" x1="4016" />
            <wire x2="3040" y1="1888" y2="2944" x1="3040" />
            <wire x2="624" y1="1888" y2="2944" x1="624" />
            <wire x2="384" y1="1888" y2="2944" x1="384" />
            <wire x2="5472" y1="1392" y2="1888" x1="5472" />
        </branch>
        <branch name="D3">
            <wire x2="448" y1="1920" y2="2944" x1="448" />
            <wire x2="2816" y1="1920" y2="1920" x1="448" />
            <wire x2="3296" y1="1920" y2="1920" x1="2816" />
            <wire x2="3824" y1="1920" y2="1920" x1="3296" />
            <wire x2="4080" y1="1920" y2="1920" x1="3824" />
            <wire x2="4880" y1="1920" y2="1920" x1="4080" />
            <wire x2="4880" y1="1920" y2="2944" x1="4880" />
            <wire x2="5152" y1="1920" y2="1920" x1="4880" />
            <wire x2="5680" y1="1920" y2="1920" x1="5152" />
            <wire x2="5680" y1="1920" y2="1936" x1="5680" />
            <wire x2="5152" y1="1920" y2="2944" x1="5152" />
            <wire x2="4080" y1="1920" y2="2944" x1="4080" />
            <wire x2="3824" y1="1920" y2="2944" x1="3824" />
            <wire x2="3296" y1="1920" y2="2944" x1="3296" />
            <wire x2="2816" y1="1920" y2="2944" x1="2816" />
            <wire x2="5680" y1="1392" y2="1920" x1="5680" />
        </branch>
        <branch name="_D3">
            <wire x2="928" y1="2176" y2="2176" x1="688" />
            <wire x2="1200" y1="2176" y2="2176" x1="928" />
            <wire x2="1456" y1="2176" y2="2176" x1="1200" />
            <wire x2="1728" y1="2176" y2="2176" x1="1456" />
            <wire x2="2256" y1="2176" y2="2176" x1="1728" />
            <wire x2="2480" y1="2176" y2="2176" x1="2256" />
            <wire x2="2816" y1="2176" y2="2176" x1="2480" />
            <wire x2="3584" y1="2176" y2="2176" x1="2816" />
            <wire x2="4624" y1="2176" y2="2176" x1="3584" />
            <wire x2="5408" y1="2176" y2="2176" x1="4624" />
            <wire x2="5680" y1="2176" y2="2176" x1="5408" />
            <wire x2="5680" y1="2176" y2="2944" x1="5680" />
            <wire x2="5408" y1="2176" y2="2944" x1="5408" />
            <wire x2="4624" y1="2176" y2="2944" x1="4624" />
            <wire x2="3584" y1="2176" y2="2944" x1="3584" />
            <wire x2="2480" y1="2176" y2="2944" x1="2480" />
            <wire x2="2256" y1="2176" y2="2944" x1="2256" />
            <wire x2="1728" y1="2176" y2="2944" x1="1728" />
            <wire x2="1456" y1="2176" y2="2944" x1="1456" />
            <wire x2="1200" y1="2176" y2="2944" x1="1200" />
            <wire x2="928" y1="2176" y2="2944" x1="928" />
            <wire x2="688" y1="2176" y2="2944" x1="688" />
            <wire x2="5680" y1="2944" y2="2944" x1="5664" />
            <wire x2="5680" y1="2160" y2="2176" x1="5680" />
        </branch>
        <iomarker fontsize="28" x="5024" y="1408" name="D0" orien="R270" />
        <iomarker fontsize="28" x="5232" y="1392" name="D1" orien="R270" />
        <iomarker fontsize="28" x="5472" y="1392" name="D2" orien="R270" />
        <iomarker fontsize="28" x="5680" y="1392" name="D3" orien="R270" />
        <branch name="_D1">
            <wire x2="800" y1="2272" y2="2272" x1="320" />
            <wire x2="1920" y1="2272" y2="2272" x1="800" />
            <wire x2="2128" y1="2272" y2="2272" x1="1920" />
            <wire x2="3456" y1="2272" y2="2272" x1="2128" />
            <wire x2="4496" y1="2272" y2="2272" x1="3456" />
            <wire x2="4496" y1="2272" y2="2944" x1="4496" />
            <wire x2="5008" y1="2272" y2="2272" x1="4496" />
            <wire x2="5232" y1="2272" y2="2272" x1="5008" />
            <wire x2="5280" y1="2272" y2="2272" x1="5232" />
            <wire x2="5280" y1="2272" y2="2944" x1="5280" />
            <wire x2="5504" y1="2272" y2="2272" x1="5280" />
            <wire x2="5504" y1="2272" y2="2944" x1="5504" />
            <wire x2="5536" y1="2944" y2="2944" x1="5504" />
            <wire x2="5008" y1="2272" y2="2608" x1="5008" />
            <wire x2="5024" y1="2608" y2="2608" x1="5008" />
            <wire x2="5024" y1="2608" y2="2944" x1="5024" />
            <wire x2="2128" y1="2272" y2="2944" x1="2128" />
            <wire x2="1920" y1="2272" y2="2944" x1="1920" />
            <wire x2="800" y1="2272" y2="2944" x1="800" />
            <wire x2="320" y1="2272" y2="2944" x1="320" />
            <wire x2="5232" y1="2160" y2="2272" x1="5232" />
        </branch>
        <branch name="_D0">
            <wire x2="2624" y1="2336" y2="2336" x1="256" />
            <wire x2="2624" y1="2336" y2="2944" x1="2624" />
            <wire x2="3392" y1="2336" y2="2336" x1="2624" />
            <wire x2="3952" y1="2336" y2="2336" x1="3392" />
            <wire x2="4208" y1="2336" y2="2336" x1="3952" />
            <wire x2="4208" y1="2336" y2="2944" x1="4208" />
            <wire x2="5024" y1="2336" y2="2336" x1="4208" />
            <wire x2="5216" y1="2336" y2="2336" x1="5024" />
            <wire x2="5216" y1="2336" y2="2944" x1="5216" />
            <wire x2="3952" y1="2336" y2="2944" x1="3952" />
            <wire x2="3392" y1="2336" y2="2944" x1="3392" />
            <wire x2="256" y1="2336" y2="2944" x1="256" />
            <wire x2="5024" y1="2160" y2="2336" x1="5024" />
        </branch>
        <instance x="4144" y="2944" name="XLXI_33" orien="R90" />
        <branch name="XLXN_17">
            <wire x2="4016" y1="3344" y2="3344" x1="3552" />
            <wire x2="4208" y1="3344" y2="3344" x1="4016" />
            <wire x2="4208" y1="3344" y2="3360" x1="4208" />
            <wire x2="3552" y1="3344" y2="3360" x1="3552" />
            <wire x2="4016" y1="3200" y2="3344" x1="4016" />
        </branch>
        <instance x="3888" y="2944" name="XLXI_34" orien="R90" />
        <branch name="XLXN_16">
            <wire x2="3760" y1="3200" y2="3360" x1="3760" />
            <wire x2="4144" y1="3360" y2="3360" x1="3760" />
        </branch>
        <instance x="3632" y="2944" name="XLXI_35" orien="R90" />
        <instance x="3104" y="2944" name="XLXI_36" orien="R90" />
        <instance x="2848" y="2944" name="XLXI_37" orien="R90" />
        <instance x="1792" y="2944" name="XLXI_38" orien="R90" />
        <instance x="2064" y="2944" name="XLXI_39" orien="R90" />
        <instance x="2352" y="2944" name="XLXI_40" orien="R90" />
        <instance x="1536" y="2944" name="XLXI_41" orien="R90" />
        <instance x="1264" y="2944" name="XLXI_42" orien="R90" />
        <instance x="1008" y="2944" name="XLXI_43" orien="R90" />
        <instance x="736" y="2944" name="XLXI_44" orien="R90" />
        <instance x="160" y="2272" name="XLXI_45" orien="R90" />
        <branch name="point">
            <wire x2="192" y1="1568" y2="2272" x1="192" />
        </branch>
        <branch name="p">
            <wire x2="192" y1="2496" y2="4160" x1="192" />
        </branch>
        <branch name="LE">
            <wire x2="96" y1="1536" y2="3808" x1="96" />
            <wire x2="528" y1="3808" y2="3808" x1="96" />
            <wire x2="528" y1="3808" y2="3856" x1="528" />
            <wire x2="1568" y1="3808" y2="3808" x1="528" />
            <wire x2="2128" y1="3808" y2="3808" x1="1568" />
            <wire x2="2880" y1="3808" y2="3808" x1="2128" />
            <wire x2="3424" y1="3808" y2="3808" x1="2880" />
            <wire x2="4176" y1="3808" y2="3808" x1="3424" />
            <wire x2="5104" y1="3808" y2="3808" x1="4176" />
            <wire x2="5104" y1="3808" y2="3872" x1="5104" />
            <wire x2="4176" y1="3808" y2="3872" x1="4176" />
            <wire x2="3424" y1="3808" y2="3872" x1="3424" />
            <wire x2="2880" y1="3808" y2="3872" x1="2880" />
            <wire x2="2128" y1="3808" y2="3872" x1="2128" />
            <wire x2="1568" y1="3808" y2="3872" x1="1568" />
        </branch>
        <instance x="464" y="3856" name="XLXI_46" orien="R90" />
        <instance x="2064" y="3872" name="XLXI_48" orien="R90" />
        <instance x="2816" y="3872" name="XLXI_49" orien="R90" />
        <instance x="3360" y="3872" name="XLXI_50" orien="R90" />
        <instance x="4112" y="3872" name="XLXI_51" orien="R90" />
        <instance x="5040" y="3872" name="XLXI_52" orien="R90" />
        <branch name="XLXN_43">
            <wire x2="5168" y1="3616" y2="3872" x1="5168" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="4240" y1="3616" y2="3872" x1="4240" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="3488" y1="3616" y2="3872" x1="3488" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2944" y1="3616" y2="3872" x1="2944" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2192" y1="3600" y2="3872" x1="2192" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1632" y1="3600" y2="3872" x1="1632" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="592" y1="3600" y2="3856" x1="592" />
        </branch>
        <branch name="a">
            <wire x2="5136" y1="4128" y2="4160" x1="5136" />
        </branch>
        <iomarker fontsize="28" x="5136" y="4160" name="a" orien="R90" />
        <branch name="b">
            <wire x2="4208" y1="4128" y2="4160" x1="4208" />
        </branch>
        <iomarker fontsize="28" x="4208" y="4160" name="b" orien="R90" />
        <branch name="c">
            <wire x2="3456" y1="4128" y2="4160" x1="3456" />
        </branch>
        <iomarker fontsize="28" x="3456" y="4160" name="c" orien="R90" />
        <branch name="d">
            <wire x2="2912" y1="4128" y2="4160" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2912" y="4160" name="d" orien="R90" />
        <branch name="e">
            <wire x2="2160" y1="4128" y2="4160" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2160" y="4160" name="e" orien="R90" />
        <branch name="f">
            <wire x2="1600" y1="4128" y2="4160" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1600" y="4160" name="f" orien="R90" />
        <branch name="g">
            <wire x2="560" y1="4112" y2="4160" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="4160" name="g" orien="R90" />
        <iomarker fontsize="28" x="192" y="4160" name="p" orien="R90" />
        <iomarker fontsize="28" x="192" y="1568" name="point" orien="R270" />
        <iomarker fontsize="28" x="96" y="1536" name="LE" orien="R270" />
        <branch name="_D2">
            <wire x2="1392" y1="2224" y2="2224" x1="864" />
            <wire x2="1664" y1="2224" y2="2224" x1="1392" />
            <wire x2="1984" y1="2224" y2="2224" x1="1664" />
            <wire x2="1984" y1="2224" y2="2944" x1="1984" />
            <wire x2="2752" y1="2224" y2="2224" x1="1984" />
            <wire x2="3520" y1="2224" y2="2224" x1="2752" />
            <wire x2="4816" y1="2224" y2="2224" x1="3520" />
            <wire x2="4816" y1="2224" y2="2944" x1="4816" />
            <wire x2="5472" y1="2224" y2="2224" x1="4816" />
            <wire x2="5600" y1="2224" y2="2224" x1="5472" />
            <wire x2="5600" y1="2224" y2="2944" x1="5600" />
            <wire x2="3520" y1="2224" y2="2944" x1="3520" />
            <wire x2="2752" y1="2224" y2="2944" x1="2752" />
            <wire x2="1664" y1="2224" y2="2944" x1="1664" />
            <wire x2="1392" y1="2224" y2="2944" x1="1392" />
            <wire x2="864" y1="2224" y2="2944" x1="864" />
            <wire x2="5472" y1="2160" y2="2224" x1="5472" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1728" y1="3264" y2="3344" x1="1728" />
            <wire x2="5056" y1="3264" y2="3264" x1="1728" />
            <wire x2="5136" y1="3264" y2="3264" x1="5056" />
            <wire x2="5136" y1="3264" y2="3360" x1="5136" />
            <wire x2="5056" y1="3200" y2="3264" x1="5056" />
        </branch>
        <instance x="4896" y="2944" name="XLXI_53" orien="R90" />
        <instance x="5152" y="2944" name="XLXI_55" orien="R90" />
        <instance x="4624" y="2944" name="XLXI_56" orien="R90" />
        <instance x="3328" y="2944" name="XLXI_57" orien="R90" />
        <instance x="2560" y="2944" name="XLXI_58" orien="R90" />
        <instance x="1504" y="3872" name="XLXI_47" orien="R90" />
    </sheet>
</drawing>