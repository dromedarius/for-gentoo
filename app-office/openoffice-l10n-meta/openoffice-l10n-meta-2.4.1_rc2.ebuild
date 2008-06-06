# Copyright 2004-2008 Sabayon Linux
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="OpenOffice.org localisation meta-package"
HOMEPAGE="http://go-oo.org"
LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
SRC_URI=""
RDEPEND=""
DEPEND=""
IUSE=""

DISABLED_LANGS="ar bn cy eo fa ku lv pt_BR ru ta_IN tn"
LANGS="af as_IN be_BY bg br bs ca cs da de dz el en_GB en_ZA es et \
fi fr ga gl gu_IN he hi_IN hr hu it ja km ko lt mk ml_IN mr_IN nb ne nl nn nr \
ns or_IN pa_IN pl pt rw sh sk sl sr ss st sv sw_TZ te_IN tg th ti_ER \
tr ts uk ur_IN ve vi xh zh_CN zh_TW zu"

for X in ${LANGS}; do
	IUSE="${IUSE} linguas_${X}"
	RDEPEND="${RDEPEND} linguas_${X}? ( ~app-office/openoffice-l10n-${X}-${PV} )"
done
