.class final Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "LteDcServiceStateTracker.java"


# static fields
.field static final DBG:Z = true


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 56
    const-string v0, "Create LteDcServiceStateTracker"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDcSST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method


# virtual methods
.method protected createSpnUpdateIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED_LTE_DC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 62
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected getOperatorIsoCountry(I)Ljava/lang/String;
    .locals 2
    .param p1, "mSimId"    # I

    .prologue
    .line 141
    const-string v0, ""

    .line 142
    .local v0, "retStr":Ljava/lang/String;
    const-string v1, "gsm.operator.iso-country.ltedc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method protected getOperatorNumericBySim(I)Ljava/lang/String;
    .locals 3
    .param p1, "mSimId"    # I

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    .local v0, "retStr":Ljava/lang/String;
    const-string v1, "gsm.operator.numeric.ltedc"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDcSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDcSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected setCurrentPreferredNwType()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "override:setCurrentPreferredNwType() do nothing."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "override:setPowerStateToDesired() do nothing."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method protected updateCsNetworkType(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "csNetworkType"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_CS_NETWORK_TYPE_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.cs.network.type.ltedc"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected updateDataNetworkType(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "dataNetworkType"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_DATA_NETWORK_TYPE_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.network.type.ltedc"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected updateOperatorAlpha(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "operatorAlphaLong"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_ALPHA_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.operator.alpha.ltedc"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method protected updateOperatorIsRoaming(IZ)I
    .locals 3
    .param p1, "mSimId"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_ISROAMING_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v2, "gsm.operator.isroaming.ltedc"

    if-eqz p2, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method protected updateOperatorIsoCountry(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "operatorIsoCountry"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_ISO_COUNTRY_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.operator.iso-country.ltedc"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected updateOperatorNumeric(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_NUMERIC_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.operator.numeric.ltedc"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected updateRoamingIndicatorNeeded(IZ)I
    .locals 3
    .param p1, "mSimId"    # I
    .param p2, "isNeeded"    # Z

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_ROAMING_INDICATOR_NEEDED_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v2, "gsm.roaming.indicator.ltedc"

    if-eqz p2, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method
