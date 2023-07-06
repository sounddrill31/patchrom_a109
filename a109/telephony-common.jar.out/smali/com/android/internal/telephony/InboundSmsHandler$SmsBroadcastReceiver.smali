.class final Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private mBroadcastTimeNano:J

.field private final mDeleteWhere:Ljava/lang/String;

.field private final mDeleteWhereArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 2
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1141
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    .line 1142
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 1143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    .line 1144
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/16 v7, 0x10

    .line 1148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1151
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1153
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v5, "android.permission.RECEIVE_SMS"

    invoke-virtual {v4, p2, v5, v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1213
    :goto_0
    return-void

    .line 1155
    :cond_0
    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1157
    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1159
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v5, "android.permission.RECEIVE_SMS"

    invoke-virtual {v4, p2, v5, v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1162
    :cond_1
    const-string v4, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1166
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->getResultCode()I

    move-result v3

    .line 1167
    .local v3, "rc":I
    const/16 v4, 0x65

    if-ne v3, v4, :cond_2

    .line 1168
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Moms] Reject by mobile manager service and delete from raw table. Result code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1169
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1170
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    goto :goto_0

    .line 1172
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Moms] Permit to dispatch, send to sms default application first. Result code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1173
    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 1177
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    .line 1179
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1180
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering SMS to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1183
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v5, "android.permission.RECEIVE_SMS"

    invoke-virtual {v4, p2, v5, v7, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 1189
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "rc":I
    :cond_4
    const-string v4, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1192
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected BroadcastReceiver action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1195
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->getResultCode()I

    move-result v3

    .line 1196
    .restart local v3    # "rc":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eq v3, v8, :cond_6

    .line 1197
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "a broadcast receiver set the result code to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deleting from raw table anyway!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1203
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1204
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 1206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 1207
    .local v2, "durationMillis":I
    const/16 v4, 0x1388

    if-lt v2, v4, :cond_7

    .line 1208
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow ordered broadcast completion time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1200
    .end local v2    # "durationMillis":I
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v5, "successful broadcast, deleting from raw table."

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1210
    .restart local v2    # "durationMillis":I
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ordered broadcast completed in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
