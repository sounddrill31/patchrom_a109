.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final CDMA_AUTO_SMS_REGISTER_FEASIBLE_ACTION:Ljava/lang/String; = "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

.field public static final CDMA_REG_SMS_ACTION:Ljava/lang/String; = "android.telephony.sms.CDMA_REG_SMS_ACTION"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DM_REGISTER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DM_REGISTER_SMS_RECEIVED"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final MOMS_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.MOMS_SMS_RECEIVED"

.field public static final MWI_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MWI_SMS_RECEIVED"

.field public static final RESULT_SMS_ACCEPT_BY_MOMS:I = 0x64

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_REJECT_BY_MOMS:I = 0x65

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final SMS_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_STATE_CHANGED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1308
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, [Ljava/lang/Object;

    .line 1309
    .local v2, "messages":[Ljava/lang/Object;
    const-string v7, "format"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "format":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1313
    const/4 v3, 0x0

    .line 1330
    :cond_0
    return-object v3

    .line 1316
    :cond_1
    const-string v7, "simId"

    const/4 v8, -0x1

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1317
    .local v6, "simId":I
    const-string v7, "Telephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get SmeMessage ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    array-length v5, v2

    .line 1321
    .local v5, "pduCount":I
    new-array v3, v5, [Landroid/telephony/SmsMessage;

    .line 1323
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1324
    aget-object v7, v2, v1

    check-cast v7, [B

    move-object v4, v7

    check-cast v4, [B

    .line 1327
    .local v4, "pdu":[B
    invoke-static {v4, v0, v6}, Lcom/android/internal/telephony/GeminiSmsMessage;->createFromPdu([BLjava/lang/String;I)Lcom/android/internal/telephony/GeminiSmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 1323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
