.class Lcom/android/server/location/GpsLocationProvider$7;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2125
    const-string v4, "GpsLocationProvider"

    const-string v5, "receive a sms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 2127
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_2

    .line 2128
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 2129
    .local v0, "message":Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_1

    .line 2130
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 2131
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v4, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)I

    move-result v2

    .line 2132
    .local v2, "testNum":I
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2133
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v5, 0x1

    add-int/lit8 v6, v2, 0xa

    invoke-static {v4, v2, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;III)Z

    .line 2149
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    .end local v1    # "messages":[Landroid/telephony/SmsMessage;
    .end local v2    # "testNum":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2136
    .restart local v0    # "message":Landroid/telephony/SmsMessage;
    .restart local v1    # "messages":[Landroid/telephony/SmsMessage;
    :cond_1
    const-string v4, "GpsLocationProvider"

    const-string v5, "message is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2139
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    :cond_2
    const-string v4, "GpsLocationProvider"

    const-string v5, "cannot get the message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2141
    .end local v1    # "messages":[Landroid/telephony/SmsMessage;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.gps.test.MESSAGE_SENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2142
    const-string v4, "GpsLocationProvider"

    const-string v5, "receive gps test sms sent action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$7;->getResultCode()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 2144
    const-string v4, "GpsLocationProvider"

    const-string v5, "test sms has sent successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2146
    :cond_4
    const-string v4, "GpsLocationProvider"

    const-string v5, "test sms has sent failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
