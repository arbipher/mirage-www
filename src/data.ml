(*
 * Copyright (c) 2015 Thomas Gazagnaire <thomas@gazagnaire.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

open Cow
open Printf

module People = struct
  let anil = {
    Atom.name = "Anil Madhavapeddy";
    uri       = Some "http://anil.recoil.org";
    email     = Some "anil@recoil.org";
  }

  let canopy = {
    Atom.name = "Canopy IRC Logger";
    uri       = Some "https://github.com/engil/canopy";
    email     = None;
  }

  let thomas = {
    Atom.name = "Thomas Gazagnaire";
    uri       = Some "http://gazagnaire.org";
    email     = Some "thomas@gazagnaire.org";
  }

  let raphael = {
    Atom.name = "Raphael Proust";
    uri       = Some "https://github.com/raphael-proust";
    email     = Some "raphlalou@gmail.com";
  }

  let dave = {
    Atom.name = "Dave Scott";
    uri       = Some "http://dave.recoil.org/";
    email     = Some "dave@recoil.org";
  }

  let balraj = {
    Atom.name = "Balraj Singh";
    uri       = None;
    email     = Some "balraj.singh@cl.cam.ac.uk";
  }

  let mort = {
    Atom.name = "Richard Mortier";
    uri       = Some "http://mort.io/";
    email     = Some "mort@cantab.net";
  }

  let vb = {
    Atom.name = "Vincent Bernardoff";
    uri       = Some "https://github.com/vbmithr";
    email     = Some "vb@luminar.eu.org";
  }

  let amir = {
    Atom.name = "Amir Chaudhry";
    uri       = Some "http://amirchaudhry.com";
    email     = Some "amirmc@gmail.com";
  }

  let ckoppelt = {
    Atom.name = "Christine Koppelt";
    uri       = Some "https://github.com/cko";
    email     = Some "ch.ko123@gmail.com";
  }

  let jonludlam = {
    Atom.name = "Jon Ludlam";
    uri       = Some "http://jon.recoil.org";
    email     = Some "jon@recoil.org";
  }

  let tal = {
    Atom.name = "Thomas Leonard";
    uri       = Some "http://roscidus.com/blog/";
    email     = Some "talex5@gmail.com";
  }

  let hannes = {
    Atom.name = "Hannes Mehnert";
    uri       = Some "https://github.com/hannesm";
    email     = Some "hm519@cam.ac.uk";
  }

  let dkaloper = {
    Atom.name = "David Kaloper";
    uri       = Some "https://github.com/pqwy";
    email     = Some "david.mersinjak@cl.cam.ac.uk";
  }

  let yallop = {
    Atom.name = "Jeremy Yallop";
    uri       = Some "https://github.com/yallop";
    email     = Some "jeremy.yallop@cl.cam.ac.uk";
  }

  let yomimono = {
    Atom.name = "Mindy Preston";
    uri       = Some "https://github.com/yomimono";
    email     = Some "mindy.preston@cl.cam.ac.uk";
  }

  let nick = {
    Atom.name = "Nick Betteridge";
    uri       = Some "https://github.com/buzzheavyyear";
    email     = Some "buzzheavyyear@hotmail.com";
  }

  let christiano = {
    Atom.name = "Christiano Haesbaert";
    uri       = Some "http://www.haesbaert.org/";
    email     = Some "haesbaert@haesbaert.org";
  }

  let djwillia = {
    Atom.name = "Dan Williams";
    uri       = Some "https://github.com/djwillia";
    email     = Some "djwillia@us.ibm.com";
  }

  let drup = {
    Atom.name = "Gabriel Radanne";
    uri       = Some "https://github.com/drup";
    email     = Some "drupyog@zoho.com";
  }

  let gemmag = {
    Atom.name = "Gemma Gordon";
    uri       =  Some "https://github.com/GemmaG";
    email     = Some "gg417@cl.cam.ac.uk";
  }

  let mk270 = {
    Atom.name = "Martin Keegan";
    uri       = Some "http://mk.ucant.org/";
    email     = None;
  }

  let derpeter = {
    Atom.name = "derpeter";
    uri       = None;
    email     = None;
  }

  let linse = {
    Atom.name = "Stefanie Schirmer";
    uri       = Some "https://linse.me";
    email     = None;
  }
end

let rights = Some "All rights reserved by the author"

module Blog = struct
  type t = Cowabloga.Blog.Entry.t
  open People
  let entries =
    let open Cowabloga.Date in
    let open Cowabloga.Blog.Entry in
    [
      { updated    = date (2019, 04, 26, 00, 00);
        authors    = [tal];
        subject    = "MirageOS security advisory 02: mirage-xen < 3.3.0";
        body       = "MSA02.md";
        permalink  = "MSA02";
      };
      { updated    = date (2019, 04, 03, 16, 00);
        authors    = [hannes];
        subject    = "MirageOS Spring 2019 hack retreat roundup";
        body       = "2019-spring-retreat-roundup.md";
        permalink  = "2019-spring-retreat-roundup";
      };
      { updated    = date (2019, 03, 21, 18, 00);
        authors    = [yomimono];
        subject    = "MirageOS security advisory 01: netchannel 1.10.0";
        body       = "MSA01.md";
        permalink  = "MSA01";
      };
      { updated    = date (2019, 03, 05, 20, 00);
        authors    = [hannes];
        subject    = "Announcing MirageOS 3.5.0";
        body       = "announcing-mirage-35-release.md";
        permalink  = "announcing-mirage-35-release";
      };
      { updated    = date (2018, 04, 20, 16, 00);
        authors    = [linse];
        subject    = "Visiting the camels - MirageOS spring hack retreat 2018";
        body       = "2018-visiting-the-camels.md";
        permalink  = "2018-visiting-the-camels";
      };
      { updated    = date (2018, 01, 26, 16, 00);
        authors    = [anil];
        subject    = "MirageOS running on the ESP32 embedded chip";
        body       = "2018-esp32-booting.md";
        permalink  = "2018-esp32-booting";
      };
      { updated    = date (2017, 12, 23, 16, 00);
        authors    = [hannes];
        subject    = "MirageOS Winter 2017 hack retreat roundup";
        body       = "2017-winter-hackathon-roundup.md";
        permalink  = "2017-winter-hackathon-roundup";
      };
      { updated    = date (2017, 4, 15, 16, 00);
        authors    = [hannes; gemmag; anil];
        subject    = "MirageOS March 2017 hack retreat roundup";
        body       = "2017-march-hackathon-roundup.md";
        permalink  = "2017-march-hackathon-roundup";
      };
      { updated    = date (2017, 03, 06, 14, 00);
        authors    = [thomas];
        subject    = "Easy distributed analytics with Irmin 1.0";
        body       = "irmin-1.0.md";
        permalink  = "irmin-1.0";
      };
      { updated    = date (2017, 03, 01, 14, 00);
        authors    = [yomimono];
        subject    = "Adding the Qubes target to Mirage";
        body       = "qubes-target.md";
        permalink  = "qubes-target";
      };
      { updated    = date (2017, 02, 27, 14, 00);
        authors    = [hannes];
        subject    = "Size matters: how Mirage got smaller and less magical";
        body       = "mirage-3-smaller.md";
        permalink  = "mirage-3-smaller";
      };
      { updated    = date (2017, 02, 23, 17, 00);
        authors    = [yomimono];
        subject    = "Announcing MirageOS 3.0.0";
        body       = "announcing-mirage-30-release.md";
        permalink  = "announcing-mirage-30-release";
      };
      { updated    = date (2016, 11, 17, 16, 00);
        authors    = [thomas];
        subject    = "Irmin 0.12 with portable filesystem watching released";
        body       = "irmin-0.12.md";
        permalink  = "irmin-0.12";
      };

      { updated    = date (2016, 7, 18, 16, 00);
        authors    = [gemmag; anil];
        subject    = "MirageOS Summer 2016 hack retreat roundup";
        body       = "2016-summer-hackathon-roundup.md";
        permalink  = "2016-summer-hackathon-roundup";
      };

      { updated    = date (2016, 6, 29, 16, 00);
        authors    = [gemmag; anil];
        subject    = "MirageOS Summer 2016 hack retreat announcement, and talk roundup";
        body       = "2016-summer-hackathon.md";
        permalink  = "2016-summer-hackathon";
      };

      { updated    = date (2016, 5, 4, 16, 00);
        authors    = [gemmag];
        subject    = "MirageOS Spring 2016 hack retreat!";
        body       = "2016-spring-hackathon.md";
        permalink  = "2016-spring-hackathon";
      };

      { updated    = date (2016, 5, 3, 18, 00);
        authors    = [hannes];
        subject    = "MirageOS security advisory 00: mirage-net-xen";
        body       = "MSA00.md";
        permalink  = "MSA00";
      };

      { updated    = date (2016, 2, 29, 12, 00);
        authors    = [drup];
        subject    = "Introducing Functoria";
        body       = "introducing-functoria.md";
        permalink  = "introducing-functoria";
      };

      { updated    = date (2016, 1, 7, 18, 10);
        authors    = [djwillia];
        subject    = "Run Mirage Unikernels on KVM/QEMU with Solo5";
        body       = "introducing-solo5.md";
        permalink  = "introducing-solo5";
      };

      { updated    = date (2016, 1, 1, 23, 42);
        authors    = [hannes];
        subject    = "MirageOS hack retreat";
        body       = "hackathon-marrakech2016.md";
        permalink  = "hackathon-marrakech2016";
      };

      { updated    = date (2015, 12, 29, 15, 30);
        authors    = [christiano];
        subject    = "Introducing Charrua — a DHCP implementation";
        body       = "introducing-charrua-dhcp.md";
        permalink  = "introducing-charrua-dhcp";
      };

      { updated    = date (2015, 12, 17, 12, 0);
        authors    = [amir];
        subject    = "Unikernel.org";
        body       = "unikernel-org.md";
        permalink  = "unikernel-org";
      };

      { updated    = date (2015, 10, 23, 11, 0);
        authors    = [amir];
        subject    = "Videos from around the world!";
        body       = "videos-around-world-2015.md";
        permalink  = "videos-around-world-2015";
      };

      { updated    = date (2015, 10, 15, 19, 0);
        authors    = [amir];
        subject    = "Getting Started Screencasts";
        body       = "getting-started-screencasts.md";
        permalink  = "getting-started-screencasts";
      };

      { updated    = date (2015, 07, 22, 17, 0);
        authors    = [dkaloper];
        subject    = "Organized chaos: managing randomness";
        body       = "mirage-entropy.md";
        permalink  = "mirage-entropy";
      };

      { updated    = date (2015, 07, 07, 12, 0);
        authors    = [yomimono; hannes];
        subject    = "Easy HTTPS Unikernels with mirage-seal";
        body       = "mirage-seal.md";
        permalink  = "mirage-seal";
      };

      { updated    = date (2015, 06, 29, 16, 0);
        authors    = [hannes];
        subject    = "Reviewing the Bitcoin Pinata";
        body       = "pinata-results.md";
        permalink  = "bitcoin-pinata-results";
      };

      { updated    = date (2015, 06, 26, 16, 0);
        authors    = [amir; thomas];
        subject    = "MirageOS v2.5 with full TLS support";
        body       = "announcing-mirage-25-release.md";
        permalink  = "announcing-mirage-25-release";
      };

      { updated    = date (2015, 06, 26, 14, 0);
        authors    = [amir];
        subject    = "Why OCaml-TLS?";
        body       = "why-ocaml-tls.md";
        permalink  = "why-ocaml-tls";
      };

      { updated    = date (2015, 02, 10, 16, 0);
        authors    = [amir];
        subject    = "Smash the Bitcoin Pinata for fun and profit!";
        body       = "announcing-bitcoin-pinata.md";
        permalink  = "announcing-bitcoin-pinata";
      };

      { updated    = date (2014, 12, 31, 16, 0);
        authors    = [anil];
        subject    = "MirageOS 2014 review: IPv6, TLS, Irmin, Jitsu and community growth";
        body       = "2014-in-review.md";
        permalink  = "2014-in-review";
      };

      { updated    = date (2010, 10, 11, 15, 0);
        authors    = [anil];
        subject    = "Self-hosting MirageOS website";
        body       = "welcome.md";
        permalink  = "self-hosting-mirage-website";
      };

      { updated    = date (2011, 04, 11, 15, 0);
        authors    = [anil];
        subject    = "A Spring Wiki Cleaning";
        body       = "spring-cleaning.md";
        permalink  = "spring-cleaning";
      };
      { updated    = date (2011, 06, 18, 15, 47);
        authors    = [anil];
        subject    = "Delimited Continuations vs Lwt for Threads";
        body       = "delimcc-vs-lwt.md";
        permalink  = "delimcc-vs-lwt";
      };
      { updated    = date (2011, 08, 12, 15, 0);
        authors    = [raphael];
        subject    = "Portable Regular Expressions";
        body       = "ocaml-regexp.md";
        permalink  = "ocaml-regexp";
      };
      { updated    = date (2011, 09, 29, 11, 10);
        authors    = [anil];
        subject    = "An Outing to CUFP 2011";
        body       = "an-outing-to-cufp.md";
        permalink  = "an-outing-to-cufp";
      };
      { updated    = date (2012, 02, 29, 11, 10);
        authors    = [mort];
        subject    = "Connected Cloud Control: OpenFlow in MirageOS";
        body       = "announcing-mirage-openflow.md";
        permalink  = "announcing-mirage-openflow";
      };
      { updated    = date (2012, 9, 12, 0, 0);
        authors    = [dave];
        subject    = "Building a \"Xenstore stub domain\" with MirageOS";
        body       = "xenstore-stub.md";
        permalink  = "xenstore-stub-domain";
      };
      { updated    = date (2012, 10, 17, 17, 30);
        authors    = [anil];
        subject    = "Breaking up is easy to do (with OPAM)";
        body       = "breaking-up-with-opam.md";
        permalink  = "breaking-up-is-easy-with-opam";
      };
      { updated    = date (2013, 05, 20, 16, 20);
        authors    = [anil];
        subject    = "The road to a developer preview at OSCON 2013";
        body       = "the-road-to-a-dev-release.md";
        permalink  = "the-road-to-a-dev-release";
      };
      { updated    = date (2013, 07, 18, 11, 20);
        authors    = [dave];
        subject    = "Creating Xen block devices with MirageOS";
        body       = "xen-block-devices-with-mirage.md";
        permalink  = "xen-block-devices-with-mirage";
      };
      { updated    = date (2013, 08, 08, 16, 00);
        authors    = [mort];
        subject    = "MirageOS travels to OSCON'13: a trip report";
        body       = "oscon13-trip-report.md";
        permalink  = "oscon13-trip-report";
      };
      { updated    = date (2013, 08, 23, 17, 43);
        authors    = [vb];
        subject    = "Introducing vchan";
        body       = "introducing-vchan.md";
        permalink  = "introducing-vchan";
      };
      { updated    = date (2013, 12, 09, 12, 0);
        authors    = [anil];
        subject    = "MirageOS 1.0: not just a hallucination!";
        body       = "releasing-mirage.md";
        permalink  = "announcing-mirage10";
      };
      { updated    = date (2013, 12, 19, 23, 0);
        authors    = [anil];
        subject    = "MirageOS 1.0.3 released; tutorial on building this website available";
        body       = "mirage-1.0.3-released.md";
        permalink  = "mirage-1.0.3-released";
      };
      { updated    = date (2014, 01, 03, 16, 0);
        authors    = [mort];
        subject    = "Presenting Decks";
        body       = "decks-n-drums.md";
        permalink  = "decks-n-drums";
      };
      { updated    = date (2014, 02, 11, 16, 0);
        authors    = [anil];
        subject    = "MirageOS 1.1.0: the eat-your-own-dogfood release";
        body       = "mirage-1.1-released.md";
        permalink  = "mirage-1.1-released";
      };
      { updated    = date (2014, 02, 25, 18, 0);
        authors    = [anil];
        subject    = "MirageOS is in Google Summer of Code 2014";
        body       = "applying-for-gsoc2014.md";
        permalink  = "applying-for-gsoc2014";
      };
      { updated    = date (2014, 05, 08, 18, 0);
        authors    = [anil];
        subject    = "Welcome to the summer MirageOS hackers";
        body       = "welcome-to-our-summer-hackers.md";
        permalink  = "welcome-to-our-summer-hackers";
      };
      { updated    = date (2014, 07, 08, 11, 0);
        authors    = [anil];
        subject    = "MirageOS 1.2 released and the 2.0 runup begins";
        body       = "mirage-1.2-released.md";
        permalink  = "mirage-1.2-released";
      };
      { updated    = date (2014, 07, 08, 15, 0);
        authors    = [hannes; dkaloper];
        subject    = "Introducing transport layer security (TLS) in pure OCaml";
        body       = "introducing-ocaml-tls.md";
        permalink  = "introducing-ocaml-tls";
      };
      { updated    = date (2014, 07, 09, 16, 0);
        authors    = [dkaloper];
        subject    = "OCaml-TLS: building the nocrypto library core";
        body       = "introducing-nocrypto.md";
        permalink  = "introducing-nocrypto";
      };
      { updated    = date (2014, 07, 10, 13, 0);
        authors    = [hannes];
        subject    = "OCaml-TLS: Adventures in X.509 certificate parsing and validation";
        body       = "introducing-x509.md";
        permalink  = "introducing-x509";
      };
      { updated    = date (2014, 07, 11, 12, 0);
        authors    = [dkaloper];
        subject    = "OCaml-TLS: ASN.1 and notation embedding";
        body       = "introducing-asn1.md";
        permalink  = "introducing-asn1";
      };
      { updated    = date (2014, 07, 14, 12, 0);
        authors    = [dkaloper; hannes];
        subject    = "OCaml-TLS: the protocol implementation and mitigations to known attacks";
        body       = "ocaml-tls-api-internals-attacks-mitigation.md";
        permalink  = "ocaml-tls-api-internals-attacks-mitigation";
      };
      { updated    = date (2014, 07, 15, 12, 0);
        authors    = [yallop];
        subject    = "Modular foreign function bindings";
        body       = "modular-foreign-function-bindings.md";
        permalink  = "modular-foreign-function-bindings";
      };
      { updated    = date (2014, 07, 16, 12, 0);
        authors    = [jonludlam];
        subject    = "Vchan: Low-latency inter-VM communication channels";
        body       = "update-on-vchan.md";
        permalink  = "update-on-vchan";
      };
      { updated    = date (2014, 07, 17, 13, 0);
        authors    = [yomimono];
        subject    = "Fitting the modular MirageOS TCP/IP stack together";
        body       = "intro-tcpip.md";
        permalink  = "intro-tcpip";
      };
      { updated    = date (2014, 07, 18, 13, 0);
        authors    = [thomas];
        subject    = "Introducing Irmin: Git-like distributed, branchable storage";
        body       = "introducing-irmin.md";
        permalink  = "introducing-irmin";
      };
      { updated    = date (2014, 07, 21, 11, 0);
        authors    = [dave];
        subject    = "Using Irmin to add fault-tolerance to the Xenstore database";
        body       = "introducing-irmin-in-xenstore.md";
        permalink  = "introducing-irmin-in-xenstore";
      };
      { updated    = date (2014, 07, 22, 10, 0);
        authors    = [tal];
        subject    = "Building an ARMy of Xen unikernels";
        body       = "introducing-xen-minios-arm.md";
        permalink  = "introducing-xen-minios-arm";
      };
      { updated    = date (2014, 07, 22, 11, 0);
        authors    = [anil];
        subject    = "MirageOS v2.0: a recap of the new features";
        body       = "announcing-mirage-20-release.md";
        permalink  = "announcing-mirage-20-release";
      };
    ]
end

module Wiki = struct

  type t = Cowabloga.Wiki.entry

  open People
  open Cowabloga.Date
  open Cowabloga.Wiki

  let irc_weekly ~y ~m ~d ~a =
    let s = sprintf "%4d-%02d-%02d" y m d in
    let s2 = sprintf "%02d-%02d-%04d" d m y in
    let href = Uri.of_string ("http://canopy.mirage.io/irclogs/" ^ s2) in
    let body = Html Cow.Html.(
      p (list [
       string "The IRC logs from our meetings in #mirage on Freenode are stored in Canopy, and available online from ";
       a ~href (string (Uri.to_string href))
    ])) in
    { updated = date (y,m,d,16,0);
      author = a;
      subject = "Weekly IRC meeting: " ^ s;
      body;
      permalink = "weekly-"^s;
    }

  let weekly ~y ~m ~d ~a =
    let s = sprintf "%4d-%02d-%02d" y m d in
    { updated = date (y,m,d,16,0);
      author  = a;
      subject = "Weekly Meeting: " ^ s;
      body    = File (sprintf "weekly/%s.md" s);
      permalink = "weekly-"^s;
    }

  let entries = [
    irc_weekly ~y:2016 ~m:4 ~d:06 ~a:canopy;
    irc_weekly ~y:2016 ~m:4 ~d:20 ~a:canopy;
    irc_weekly ~y:2016 ~m:5 ~d:4 ~a:canopy;
    irc_weekly ~y:2016 ~m:5 ~d:18 ~a:canopy;
    irc_weekly ~y:2016 ~m:6 ~d:1 ~a:canopy;
    irc_weekly ~y:2016 ~m:6 ~d:15 ~a:canopy;
    irc_weekly ~y:2016 ~m:6 ~d:29 ~a:canopy;
    irc_weekly ~y:2016 ~m:7 ~d:27 ~a:canopy;
    irc_weekly ~y:2016 ~m:8 ~d:24 ~a:canopy;
    irc_weekly ~y:2016 ~m:9 ~d:07 ~a:canopy;
    irc_weekly ~y:2016 ~m:10 ~d:05 ~a:canopy;
    irc_weekly ~y:2016 ~m:10 ~d:19 ~a:canopy;
    irc_weekly ~y:2016 ~m:11 ~d:2 ~a:canopy;
    weekly ~y:2016 ~m:3 ~d:2 ~a:amir;
    weekly ~y:2016 ~m:2 ~d:17 ~a:amir;
    weekly ~y:2016 ~m:2 ~d:3 ~a:amir;
    weekly ~y:2016 ~m:1 ~d:13 ~a:amir;
    weekly ~y:2015 ~m:12 ~d:16 ~a:amir;
    weekly ~y:2015 ~m:12 ~d:2 ~a:amir;
    weekly ~y:2015 ~m:11 ~d:11 ~a:amir;
    weekly ~y:2015 ~m:10 ~d:28 ~a:amir;
    weekly ~y:2015 ~m:10 ~d:14 ~a:amir;
    weekly ~y:2015 ~m:9 ~d:30 ~a:amir;
    weekly ~y:2015 ~m:9 ~d:9 ~a:amir;
    weekly ~y:2015 ~m:8 ~d:26 ~a:mort;
    weekly ~y:2015 ~m:7 ~d:1 ~a:anil;
    weekly ~y:2015 ~m:6 ~d:3 ~a:amir;
    weekly ~y:2015 ~m:5 ~d:20 ~a:amir;
    weekly ~y:2015 ~m:5 ~d:6 ~a:amir;
    weekly ~y:2015 ~m:4 ~d:23 ~a:amir;
    weekly ~y:2015 ~m:4 ~d:9 ~a:amir;
    weekly ~y:2015 ~m:3 ~d:25 ~a:amir;
    weekly ~y:2015 ~m:3 ~d:11 ~a:amir;
    weekly ~y:2015 ~m:2 ~d:25 ~a:amir;
    weekly ~y:2015 ~m:2 ~d:11 ~a:amir;
    weekly ~y:2015 ~m:1 ~d:28 ~a:amir;
    weekly ~y:2015 ~m:1 ~d:14 ~a:amir;
    weekly ~y:2014 ~m:12 ~d:10 ~a:amir;
    weekly ~y:2014 ~m:11 ~d:26 ~a:amir;
    weekly ~y:2014 ~m:11 ~d:12 ~a:amir;
    weekly ~y:2014 ~m:10 ~d:28 ~a:amir;
    weekly ~y:2014 ~m:10 ~d:14 ~a:amir;
    weekly ~y:2014 ~m:9 ~d:30 ~a:amir;
    weekly ~y:2014 ~m:9 ~d:16 ~a:amir;
    weekly ~y:2014 ~m:8 ~d:20 ~a:amir;
    weekly ~y:2014 ~m:8 ~d:7 ~a:amir;
    weekly ~y:2014 ~m:7 ~d:8 ~a:amir;
    weekly ~y:2014 ~m:6 ~d:24 ~a:amir;
    weekly ~y:2014 ~m:6 ~d:10 ~a:amir;
    weekly ~y:2014 ~m:5 ~d:27 ~a:amir;
    weekly ~y:2014 ~m:4 ~d:29 ~a:amir;
    weekly ~y:2014 ~m:4 ~d:15 ~a:dave;
    weekly ~y:2014 ~m:4 ~d:1 ~a:amir;
    weekly ~y:2014 ~m:3 ~d:18 ~a:amir;
    weekly ~y:2014 ~m:3 ~d:4 ~a:amir;
    weekly ~y:2014 ~m:2 ~d:26 ~a:amir;

    { updated    = date (2018, 4, 20, 14, 00);
      author     = derpeter;
      subject    = "MirageOS on ARM64";
      body       = File "arm64.md";
      permalink  = "arm64";
    };

    { updated    = date (2017, 12, 3, 12, 00);
      author     = mk270;
      subject    = "Learning about Mirage";
      body       = File "learning.md";
      permalink  = "learning";
    };

    { updated    = date (2017, 02, 23, 16, 00);
      author     = thomas (*also tal, but no support for multiple authors in wiki :( *);
      subject    = "Error Handling in Mirage3";
      body       = File "mirage-3.0-errors.md";
      permalink  = "mirage-3.0-errors";
     };

    { updated    = date (2017, 02, 23, 16, 00);
      author     = yomimono;
      subject    = "Porting Mirage 2.x Projects to Mirage 3.x";
      body       = File "mirage2-to-mirage3.md";
      permalink  = "mirage2-to-mirage3";
     };

    { updated    = date (2015, 06, 26, 14, 0);
      author     = hannes;
      subject    = "Unix TLS Tools";
      body       = File "tls-unix.md";
      permalink  = "tls-unix";
    };

    { updated    = date (2014, 02, 01, 01, 0);
      author     = jonludlam;
      subject    = "How Xen suspend and resume works";
      body       = File "xen-suspend.md";
      permalink  = "xen-suspend";
    };

    { updated    = date (2013, 12, 29, 17, 0);
      author     = dave;
      subject    = "Understanding Xen events with MirageOS";
      body       = File "xen-events.md";
      permalink  = "xen-events";
    };
    { updated    = date (2013, 12, 25, 22, 0);
      author     = amir;
      subject    = "Deploying via Continuous Integration";
      body       = File "deployment.md";
      permalink  = "deploying-via-ci";
    };

    { updated    = date (2013, 10, 15, 16, 0);
      author     = amir;
      subject    = "Overview of MirageOS";
      body       = File "overview-of-mirage.md";
      permalink  = "overview-of-mirage";
    };

    { updated    = date (2013, 11, 10, 16, 0);
      author     = ckoppelt;
      subject    = "Technical Background of MirageOS";
      body       = File "technical-background.md";
      permalink  = "technical-background";
    };

    { updated    = date (2013, 12, 09, 16, 0);
      author     = anil;
      subject    = "Frequently Asked Questions (FAQ)";
      body       = File "faq.md";
      permalink  = "faq";
    };

    { updated    = date (2014, 02, 02, 17, 56);
      author     = dave;
      subject    = "Synthesizing virtual disks for Xen";
      body       = File "xen-synthesize-virtual-disk.md";
      permalink  = "xen-synthesize-virtual-disk";
    };

    weekly ~y:2013 ~m:6 ~d:11 ~a:anil;
    weekly ~y:2013 ~m:6 ~d:4 ~a:anil;
    weekly ~y:2013 ~m:5 ~d:28 ~a:anil;
    weekly ~y:2013 ~m:5 ~d:21 ~a:anil;
    weekly ~y:2013 ~m:5 ~d:14 ~a:anil;
    weekly ~y:2013 ~m:4 ~d:30 ~a:anil;
    weekly ~y:2013 ~m:4 ~d:23 ~a:anil;
    weekly ~y:2013 ~m:4 ~d:16 ~a:anil;

    { updated    = date (2013, 08, 15, 16, 0);
      author     = balraj;
      subject    = "Getting Started with Lwt threads";
      body       = File "tutorial-lwt.md";
      permalink  = "tutorial-lwt";
    };

    { updated    = date (2013, 12, 20, 23, 00);
      author     = anil; (* ++ mort ++ vb -- need multiple author support *)
      subject    = "Installation";
      body       = File "install.md";
      permalink  = "install";
    };

    { updated    = date (2013, 07, 17, 15, 00);
      author     = mort;
      subject    = "OPAM Libraries";
      body       = File "opam.md";
      permalink  = "opam";
    };

    { updated    = date (2013, 12, 21, 12, 50);
      author     = anil;
      subject    = "Building mirage-www";
      body       = File "mirage-www.md";
      permalink  = "mirage-www";
    };

    { updated    = date (2013, 12, 31, 19, 00);
      author     = mort;
      subject    = "Hello MirageOS World";
      body       = File "hello-world.md";
      permalink  = "hello-world";
    };
    { updated    = date (2013, 08, 11, 15, 00);
      author     = anil;
      subject    = "Running MirageOS Xen kernels";
      body       = File "xen-boot.md";
      permalink  = "xen-boot";
    };

    { updated    = date (2011, 04, 12, 10, 0);
      author     = anil;
      subject    = "DNS Performance Tests";
      body       = Html Perf.dns;
      permalink  = "performance";
    };

    { updated    = date (2011, 04, 12, 9, 0);
      author     = anil;
      subject    = "Publications";
      body       = Html Paper.html;
      permalink  = "papers";
    };

    { updated    = date (2013, 08, 14, 10, 0);
      author     = mort;
      subject    = "Presentations";
      body       = File "talks.md";
      permalink  = "talks";
    };

    {
      updated    = date (2014, 04, 16, 17, 30);
      author     = tal;
      subject    = "Running Xen on the Cubieboard2";
      body       = File "xen-on-cubieboard2.md";
      permalink  = "xen-on-cubieboard2";
    };
    { updated    = date (2014, 08, 12, 22, 56);
      author     = yomimono;
      subject    = "Contributing to MirageOS";
      body       = File "contributing.md";
      permalink  = "contributing";
    };
    { updated    = date (2014, 08, 21, 11, 19);
      author     = nick;
      subject    = "Libvirt On Cubieboard";
      body       = File "libvirt-on-cubieboard.md";
      permalink  = "libvirt-on-cubieboard";
    };
    { updated    = date (2014, 12, 11, 17, 23);
      author     = tal;
      subject    = "Tracing and Profiling";
      body       = File "profiling.md";
      permalink  = "profiling";
    };
    { updated    = date (2015, 06, 18, 11, 00);
      author     = tal;
      subject    = "Breaking changes";
      body       = File "breaking-changes.md";
      permalink  = "breaking-changes";
    };
    { updated    = date (2017, 05, 22, 18, 00);
      author     = dave;
      subject    = "Building and packaging with dune and dune-release";
      body       = File "packages.md";
      permalink  = "packaging";
    };
  ]
end

module Links = struct

  type t = Cowabloga.Links.t

  open Cowabloga.Date
  open Cowabloga.Links
  let press = {
    name="press-coverage";
    icon="fa-pencil";
  }

  let talk = {
    name="public-talk";
    icon="fa-pencil";
  }

  let blog = {
    name="public-blog";
    icon="fa-user";
  }

  let hn = {
    name="hackernews";
    icon="fa-hacker-news";
  }

  let entries = [
    { id = "talk-big-techday8";
      uri = Uri.of_string
              "http://www.techcast.com/events/bigtechday8/salvator-1130/";
      title = "Nymote: Git your own cloud here";
      date = day(2015,06,12);
      stream = talk;
    };

    { id="tls-podcast-ohm";
      uri=Uri.of_string "http://monoxyd.de/20150408-ohm-008-ohne-heftige-mangel";
      title="(german) OHM #008 – Ohne Heftige Mängel: TLS und dessen Probleme; robuste Implementierung von Sicherheitsprotokollen; OCaml-TLS und MirageOS";
      date=day(2015,04,08);
      stream=press;
    };

    { id="cam-news-nymote";
      uri=Uri.of_string "http://www.cambridge-news.co.uk/personal-cloud-private-data-reality-thanks-Nymote/story-26074338-detail/story.html";
      title="A personal cloud for your private data could become a reality thanks to Nymote";
      date=day(2015,02,24);
      stream=press;
    };

    { id="acolyer-mergeable-structures";
      uri=Uri.of_string "http://blog.acolyer.org/2015/01/14/mergeable-persistent-data-structures/";
      title="Mergeable persistent data structures";
      date=day(2015,01,14);
      stream=blog;
    };

    { id="acolyer-unikernels";
      uri=Uri.of_string "http://blog.acolyer.org/2015/01/13/unikernels-library-operating-systems-for-the-cloud/";
      title="Unikernels: Library Operating Systems for the Cloud";
      date=day(2015,01,13);
      stream=blog;
    };

    { id="gfx-os-tech-to-watch";
      uri=Uri.of_string "http://gfxmonk.net/2015/01/04/os-technologies-to-watch.html";
      title="OS Technologies To Watch In 2015";
      date=day(2015,01,04);
      stream=blog;
    };

    { id="31c3-secure-modular-os-tls";
      uri=Uri.of_string "http://media.ccc.de/browse/congress/2014/31c3_-_6443_-_en_-_saal_2_-_201412271245_-_trustworthy_secure_modular_operating_system_engineering_-_hannes_-_david_kaloper.html#video";
      title="Trustworthy secure modular operating system engineering";
      date=day(2014,12,27);
      stream=talk;
    };

    { id="oups-dec2014-state-of-mirage";
      uri=Uri.of_string "https://www.irill.org/videos/oups-december-2014/MirageOS";
      title="OCaml Users Paris: State of the Mirage";
      date=day(2014,12,09);
      stream=talk;
    };

    { id="techrepublic-unikernels";
      uri=Uri.of_string "http://www.techrepublic.com/article/unikernels-offer-a-stripped-down-alternative-to-linux/";
      title="Unikernels offer a stripped down alternative to Linux";
      date=day(2014,12,18);
      stream=press;
    };

    { id="after-docker-immutable-infra";
      uri=Uri.of_string "https://medium.com/@darrenrush/after-docker-unikernels-and-immutable-infrastructure-93d5a91c849e";
      title="After Docker: Unikernels and Immutable Infrastructure";
      date=day(2014,11,06);
      stream=blog;
    };

    { id="unikernels-what-where-why-awick";
      uri=Uri.of_string "https://www.youtube.com/watch?v=oHcHTFleNtg";
      title="Unikernels: Who, What, Where, When, Why - Adam Wick, Galois";
      date=day(2014,10,17);
      stream=talk;
    };

    { id="enterprise-oss-2014";
      uri=Uri.of_string "http://www.linux.com/news/software/applications/789241--5-new-enterprise-open-source-projects-to-watch/";
      title="5 New Enterprise Open Source Projects to Watch";
      date=day(2014,09,24);
      stream=press;
    };

    { id="haskell-symposium-2014-keynote";
      uri=Uri.of_string "https://www.youtube.com/watch?v=UEIHfXLMtwA";
      title="Haskell Symposium 2014 Keynote on Unikernels";
      date=day(2014,09,05);
      stream=talk;
    };

    { id="edge-cases-episode-101";
      uri=Uri.of_string "http://edgecasesshow.com/101-a-program-that-runs-on-metal.html";
      title="A Program That Runs on Metal";
      date=day(2014,08,14);
      stream=blog;
    };

    { id="miso-talk-entrepreneur-first";
      uri=Uri.of_string "http://amirchaudhry.com/describing-miso-entrepreneur-first-2014";
      title="Describing the MISO stack at Entrepreneur First";
      date=day(2014,07,25);
      stream=blog;
    };

    { id="mirage-20-pr-congoo";
      uri=Uri.of_string "http://www.congoo.com/news/addstorycomment.aspx?st=291376442&Channel_ID=8&Category_ID=-1";
      title="Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-reuters";
      uri=Uri.of_string "http://www.reuters.com/article/2014/07/22/idUSnMKWyFRLBa+1de+MKW20140722";
      title="Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-phoronix";
      uri=Uri.of_string "http://www.phoronix.com/scan.php?page=news_item&px=MTc0NjY";
      title="Xen Project Announces Mirage OS 2.0";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-linux-embedded";
      uri=Uri.of_string "https://www.linux.com/news/embedded-mobile/mobile-linux/781359-xen-project-announces-mirage-os-20";
      title="Xen Project Announces Mirage OS 2.0";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-slashdot";
      uri=Uri.of_string "http://beta.slashdot.org/submission/3717339/news-mirage-os-20----compile-your-own-cloud";
      title="News: Mirage OS 2.0 -- Compile Your Own Cloud";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-vmblog";
      uri=Uri.of_string "http://vmblog.com/archive/2014/07/22/xen-project-introduces-new-mirage-os-release.aspx";
      title="Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-lastminutegeek";
      uri=Uri.of_string "http://www.lastminutegeek.com/english/77-linuxtoday/1151651-mirage-os-v20-the-new-features.html";
      title="Mirage OS v2.0: The new features";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-techinvestornews";
      uri=Uri.of_string "http://www.techinvestornews.com/Cloud/Latest-Cloud-Computing-News/xen-unveils-mirage-os-2.0-for-open-source-virtual-cloud-apps";
      title="Xen Unveils Mirage OS 2.0 for Open Source Virtual Cloud Apps";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-slashdot-2";
      uri=Uri.of_string "http://beta.slashdot.org/submission/3720459/xen-unveils-mirage-os-20-for-open-source-virtual-cloud-apps";
      title="Xen Unveils Mirage OS 2.0 for Open Source Virtual Cloud Apps";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-linuxtoday";
      uri=Uri.of_string "http://www.linuxtoday.com/high_performance/mirage-os-v2.0-the-new-features.html";
      title="Mirage OS v2.0: The new features";
      date=day(2014,07,23);
      stream=press;
    };

    { id="mirage-20-pr-twit";
      uri=Uri.of_string "https://plus.google.com/+TWiT/posts/6DkCPz3TSdd";
      title="FLOSS Weekly 302 | TWiT.TV";
      date=day(2014,07,23);
      stream=press;
    };

    { id="mirage-20-pr-cloudcomputinginfo";
      uri=Uri.of_string "http://cloudcomputing.info/en/news/2014/07/xen-project-releases-mirage-os-2-0.html";
      title="Xen Project releases Mirage OS 2.0";
      date=day(2014,07,23);
      stream=press;
    };

    { id="mirage-20-pr-vibriefing";
      uri=Uri.of_string "http://www.vibriefing.com/xen-unveils-mirage-os-2-0-for-open-source-virtual-cloud-apps/";
      title="Xen Unveils Mirage OS 2.0 for Open Source Virtual Cloud Apps";
      date=day(2014,07,25);
      stream=press;
    };

    { id="mirage-20-pr-marketwatch";
      uri=Uri.of_string "http://www.marketwatch.com/story/xen-project-introduces-new-mirage-os-release-2014-07-22";
      title="Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-linuxquestions";
      uri=Uri.of_string "http://www.linuxquestions.org/questions/syndicated-linux-news-67/lxer-xen-unveils-mirage-os-2-0-for-open-source-virtual-cloud-apps-4175512075/";
      title="LXer: Xen Unveils Mirage OS 2.0 for Open Source Virtual Cloud Apps";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-4-traders";
      uri=Uri.of_string "http://www.4-traders.com/news/Xen-Project-Introduces-New-Mirage-OS-Release--18774589/";
      title=" Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="mirage-20-pr-release";
      uri=Uri.of_string "http://www.marketwired.com/press-release/xen-project-introduces-new-mirage-os-release-1931602.htm";
      title="Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="yahoo-pr-mirage-20-release";
      uri=Uri.of_string "http://finance.yahoo.com/news/xen-project-introduces-mirage-os-120000542.html";
      title="Yahoo Finance - Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="cloud-computing-mirage-20";
      uri=Uri.of_string "http://cloudcomputing.info/en/news/2014/07/xen-project-releases-mirage-os-2-0.html";
      title="CloudComputing - Xen Project releases Mirage OS 2.0";
      date=day(2014,07,22);
      stream=press;
    };

    { id="xenblog-mirage-20-release";
      uri=Uri.of_string "http://blog.xen.org/index.php/2014/07/22/mirage-os-v2-0-the-new-features/";
      title="XenBlog: Mirage OS v2.0: The new features";
      date=day(2014,07,22);
      stream=blog;
    };

    { id="varguy-mirage-20-release";
      uri=Uri.of_string "http://thevarguy.com/virtualization-applications-and-technologies/072314/xen-unveils-mirage-os-20-open-source-virtual-cloud-apps";
      title="Xen Unveils Mirage OS 2.0 for Open Source Virtual Cloud Apps";
      date=day(2014,07,23);
      stream=press;
    };

    { id="mirage-20-release-linux-magazin-de";
      uri=Uri.of_string "http://www.linux-magazin.de/NEWS/Ocaml-Cloud-OS-Mirage-OS-2.0-erhoeht-Sicherheit";
      title="(german) OCaml-Cloud-OS Mirage OS 2.0 erhöht Sicherheit";
      date=day(2014,07,23);
      stream=press;
    };

    { id="mirage-20-release-yc-isvoc";
      uri=Uri.of_string "http://yc.isvoc.com/201407231852-xen-project-introduces-new-mirage-os-release.html#.U9AWkhZD3nc";
      title="(chinese) Xen项目推出新的幻影操作系统版本";
      date=day(2014,07,23);
      stream=press;
    };

    { id="mirage-20-release-admin-magazin-de";
      uri=Uri.of_string "http://www.admin-magazin.de/News/Mirage-OS-2.0-veroeffentlicht";
      title="(german) Mirage OS 2.0 veröffentlicht";
      date=day(2014,07,22);
      stream=press;
    };

    { id="bww-mirage-20-release";
      uri=Uri.of_string "http://www.broadwayworld.com/bwwgeeks/article/Xen-Project-Introduces-New-Mirage-OS-Release-20140722#.U9AX5xZD3nc";
      title="BWW: Xen Project Introduces New Mirage OS Release";
      date=day(2014,07,22);
      stream=press;
    };

    { id="open-source-china-mirage-20-release";
      uri=Uri.of_string "http://www.oschina.net/news/53851/mirage-os-2-0-released";
      title="(chinese) Mirage OS 2.0 发布，云编程平台";
      date=day(2014,07,23);
      stream=press;
    };

    { id="seedhack-experience";
      uri=Uri.of_string "http://seedcamp.com/seedhack-5-0/";
      title="The Seedhack Experience";
      date=day(2014,07,23);
      stream=blog;
    };

    { id="hn-introducing-irmin";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=8053687";
      title="HN: Irmin: Git-like distributed, branchable storage";
      date=day(2014,07,18);
      stream=hn;
    };

    { id="hn-introducing-asn1";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=8020125";
      title="HN: OCaml-TLS: ASN.1 and notation embedding";
      date=day(2014,07,11);
      stream=hn;
    };

    { id="hn-mirage-os-unikernel-for-xen-hypervisor";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=7726748";
      title="HN: Mirage OS: A Unikernel For The Xen Hypervisor";
      date=day(2014,05,10);
      stream=hn;
    };

    { id="hn-ocaml-tls-api-internals-attacks-mitigation";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=8031368";
      title="HN: OCaml-TLS: the protocol implementation and mitigations to known attacks";
      date=day(2014,07,14);
      stream=hn;
    };

    { id="hn-announcing-mirage-20-release";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=8069132";
      title="HN: Mirage v2.0: a recap of the new features";
      date=day(2014,07,22);
      stream=hn;
    };

    { id="hn-acm-queue-01";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=7053638";
      title="HN: Unikernels: Rise of the Virtual Library Operating System";
      date=day(2014,01,14);
      stream=hn;
    };

    { id="hn-acm-queue-02";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=8025493";
      title="HN: Unikernels: Rise of the Virtual Library Operating System";
      date=day(2014,07,12);
      stream=hn;
    };

    { id="hn-introducing-tls";
      uri=Uri.of_string "https://news.ycombinator.com/item?id=8005130";
      title="HN: Introducing Transport Layer Security in pure OCaml";
      date=day(2014,07,08);
      stream=hn;
    };

    { id="digital-conversations-2014";
      uri=Uri.of_string "http://www.brondbjerg.co.uk/blog/2014/06/building-the-next-generation-of-the-web/";
      title="Digital Conversations - Building the Next Generation of the Web";
      date=day(2014,06,12);
      stream=press;
    };

    { id="linux-magazin-de-zero-install";
      uri=Uri.of_string "http://www.linux-magazin.de/Ausgaben/2014/06/Ocaml/%28language%29/ger-DE/";
      title="Programmieren in OCaml (German)";
      date=day(2014,06,01);
      stream=press;
    };

    { id="se-radio-2014";
      uri=Uri.of_string "http://www.se-radio.net/2014/05/episode-204-anil-madhavapeddy-on-the-mirage-cloud-operating-system-and-the-ocaml-language/";
      title="Software Engineering Radio: podcast on MirageOS and OCaml with Anil Madhavapeddy";
      date=day(2014,05,30);
      stream=press;
    };

    { id="nw-lang-mirageos";
      uri=Uri.of_string "http://www.networkworld.com/slideshow/149127/beyond-the-usual-suspects-10-hot-programming-languages-on-the-rise.html#slide10";
      title="Beyond the usual suspects: 10 hot programming languages on the rise";
      date=day(2014,04,17);
      stream=press;
    };

    { id="citirx-containers-xen";
      uri=Uri.of_string "http://open.citrix.com/blog/328-are-containers-the-right-answer-to-the-wrong-question.html";
      title="Are Containers the Right Answer to the Wrong Question?";
      date=day(2014,04,08);
      stream=blog;
    };

    { id="mindy-unikernel-1";
      uri=Uri.of_string "http://www.somerandomidiot.com/blog/2014/03/14/its-a-mirage/";
      title="It's a Mirage! (or, How to Shave a Yak.)";
      date=day(2014,03,14);
      stream=blog;
    };

    { id="amirmc-jekyll-1";
      uri=Uri.of_string "http://amirchaudhry.com/from-jekyll-to-unikernel-in-fifty-lines";
      title="From Jekyll site to Unikernel in fifty lines of code";
      date=day(2014,03,10);
      stream=blog;
    };

    { id="pcworld-2014-xenarm";
      uri=Uri.of_string "http://www.pcworld.com/article/2106460/xen-hypervisor-moves-into-arm-space.html";
      title="Xen hypervisor moves into ARM space";
      date=day(2014,03,10);
      stream=press;
    };
    { id="fosdem-2014-video";
      uri=Uri.of_string "http://video.fosdem.org/2014/Janson/Sunday/MirageOS_compiling_functional_library_operating_systems.webm";
      title="FOSDEM 2014: MirageOS: compiling functional library operating systems";
      date=day(2014,02,02);
      stream=talk;
    };
    { id="fosdem-2014";
      uri=Uri.of_string "https://fosdem.org/2014/interviews/2014-anil-madhavapeddy-richard-mortier/";
      title="Interview with Anil Madhavapeddy and Richard Mortier on MirageOS";
      date=day(2014,01,29);
      stream=press;
    };
    { id="osnews-2014";
      uri=Uri.of_string "http://www.osnews.com/comments/27516?view=threaded&sort=&threshold=0";
      title="OSNews: MirageOS: rise of the virtual library operating system";
      date=day(2014,01,15);
      stream=press;
    };
    { id="nymote-mirage-ann-2014";
      uri=Uri.of_string "http://nymote.org/blog/2014/announcing-first-mirage-release/";
      title="Nymote.org: Announcing the first major release of Mirage - the Cloud Operating System";
      date=day(2014,01,13);
      stream=press;
    };
    { id="infoworld-mirage-2014";
      uri=Uri.of_string "http://www.infoworld.com/t/operating-systems/xen-mirage-the-less-more-cloud-os-233823";
      title="Xen Mirage: The less-is-more cloud OS";
      date=day(2014,01,09);
      stream=press;
    };
    { id="infoq-rwo-2013";
      uri=Uri.of_string "http://www.infoq.com/articles/real-world-ocaml-interview";
      title="Book Review and Interview: Real World OCaml";
      date=day(2014,01,08);
      stream=press;
    };
    { id="techweek-europe-2013";
      uri=Uri.of_string "http://www.techweekeurope.co.uk/comment/xen-launches-mirage-cloud-os-133875";
      title="Xen Launches The Mirage Cloud OS";
      date=day(2013,12,11);
      stream=press;
    };
    {
      id="linuxcom-cloud-os-2013";
      uri=Uri.of_string "http://www.linux.com/news/enterprise/cloud-computing/751156-are-cloud-operating-systems-the-next-big-thing-";
      title="Linux.com: Are Cloud Operating Systems the Next Big Thing?";
      date=day (2013,12,03);
      stream=press;
    };
    {
      id="infoq-mirageos-2013";
      uri=Uri.of_string "http://www.infoq.com/news/2013/12/mirageos";
      title="InfoQ: Xen Project Releases 1.0 of Mirage OS";
      date=day (2013,12,23);
      stream=press;
    };
    {
      id="eweek-mirageos-2013";
      uri=Uri.of_string "http://www.eweek.com/cloud/xen-project-builds-its-own-cloud-os-mirage.html/";
      title="eWeek: Xen Project Builds Its Own Cloud OS Mirage";
      date=day (2013,12,09);
      stream=press;
    };
    {
      id="xenproject-mirageos-2013";
      uri=Uri.of_string "http://www.xenproject.org/about/in-the-news/162-xen-project-releases-mirage-os-welcomes-arm-as-newest-member.html";
      title="Xen Project Releases Mirage OS, Welcomes ARM as Newest Member";
      date=day (2013,12,09);
      stream=press;
    };
    { id="voxoz-docker-2013";
      uri=Uri.of_string "http://blog.docker.io/2013/09/powering-voxoz-ecosystem-with-docker/";
      title="Powering Voxoz ecosystem with Docker";
      date=day (2013,09,26);
      stream=blog;
    }
  ]

  (* let streams = [ press; blog ] *)
end

module Feed = struct
  open Www_types

  type t = domain -> Cow.Html.t read -> Cowabloga.Atom_feed.t

  let blog domain read_entry = {
    Cowabloga.Atom_feed.base_uri = Site_config.base_uri domain;
    id = "blog/";
    title = "The MirageOS Blog";
    subtitle = Some "on building functional operating systems";
    rights;
    author = None;
    read_entry
  }

  let wiki domain read_entry = {
    Cowabloga.Atom_feed.base_uri = Site_config.base_uri domain;
    id = "wiki/";
    title = "The MirageOS Documentation";
    subtitle = Some "guides and articles on using MirageOS";
    rights;
    author = None;
    read_entry
  }

  (* Metadata for /updates/atom.xml *)
  let updates scheme read_entry = {
    Cowabloga.Atom_feed.base_uri = Site_config.base_uri scheme;
    id = "updates/";
    title = "MirageOS updates";
    subtitle = None;
    rights;
    author = None;
    read_entry
  }

  let links scheme read_entry = {
    Cowabloga.Atom_feed.base_uri = Site_config.base_uri scheme;
    id = "";
    title = "External articles about MirageOS";
    subtitle = None;
    rights;
    author = None;
    read_entry
  }

end

let google_analytics (_, host) = ("UA-19610168-1", host)

let empty_feed = {
  Cowabloga.Atom_feed.base_uri = Site_config.base_uri (`Http, "localhost");
    id = "";
    title = "";
    subtitle = None;
    rights;
    author = None;
    read_entry = (fun _ -> Lwt.fail Not_found);
  }
