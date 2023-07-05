.class public Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final EVENT_RADIO_ON:I = 0x0

.field private static F:I = 0x0

.field public static final MD_TYPE_LTG:I = 0x7

.field public static final MD_TYPE_LTNG:I = 0x6

.field public static final MD_TYPE_LWG:I = 0x5

.field public static final MD_TYPE_UNKNOWN:I

.field private static W:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->W:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 68
    sput-object p1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->W:Lcom/android/internal/telephony/CommandsInterface;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->W:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "ril.active.md"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query modem type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static getActiveModemType()I
    .locals 2

    .prologue
    .line 130
    const-string v0, "ril.active.md"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 133
    sget v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteMSH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public static modemToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    packed-switch p0, :pswitch_data_0

    .line 179
    :pswitch_0
    const-string v0, "Invalid modem type"

    .line 183
    :goto_0
    return-object v0

    .line 167
    :pswitch_1
    const-string v0, "MD_TYPE_UNKNOWN"

    goto :goto_0

    .line 170
    :pswitch_2
    const-string v0, "MD_TYPE_LTNG(MMDC)"

    goto :goto_0

    .line 173
    :pswitch_3
    const-string v0, "MD_TYPE_LTG(CSFB)"

    goto :goto_0

    .line 176
    :pswitch_4
    const-string v0, "MD_TYPE_LWG(CSFB)"

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setModemType(I)V
    .locals 2

    .prologue
    .line 140
    const-string v0, "ril.active.md"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sput p0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setModemType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->F:I

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static switchModem(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 80
    const-string v0, "[switchModem]+"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to modem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->W:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    if-ne p0, v2, :cond_1

    .line 84
    const-string v0, "Radio off or unavailable, can not switch to FDD CSFB modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    const-string v0, "[switchModem]-"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 119
    :goto_1
    return-void

    .line 85
    :cond_1
    if-ne p0, v4, :cond_2

    .line 86
    const-string v0, "Radio off or unavailable, can not switch to TDD CSFB modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    if-ne p0, v3, :cond_0

    .line 88
    const-string v0, "Radio off or unavailable, can not switch to MMDC modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid modem type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 118
    :goto_2
    const-string v0, "[switchModem]-"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :pswitch_0
    if-ne p0, v2, :cond_5

    .line 99
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->W:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    .line 106
    :cond_4
    :goto_3
    invoke-static {p0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->setModemType(I)V

    .line 109
    const-string v0, "Broadcast intent ACTION_LTE_MD_TYPE_CHANGE"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_LTE_MD_TYPE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v1, "mdType"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_2

    .line 100
    :cond_5
    if-ne p0, v3, :cond_6

    .line 101
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->W:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_3

    .line 102
    :cond_6
    if-ne p0, v4, :cond_4

    goto :goto_3

    .line 93
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const-string v0, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->d()V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
