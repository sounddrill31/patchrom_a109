.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
.super Landroid/os/Handler;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingHandler"
.end annotation


# static fields
.field private static final MESSAGE_ADB_ALLOW:I = 0x3

.field private static final MESSAGE_ADB_CLEAR:I = 0x6

.field private static final MESSAGE_ADB_CONFIRM:I = 0x5

.field private static final MESSAGE_ADB_DENY:I = 0x4

.field private static final MESSAGE_ADB_DISABLED:I = 0x2

.field private static final MESSAGE_ADB_ENABLED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 165
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$002(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    .line 172
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v5, "UsbDebuggingManager"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$102(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 173
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$100(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$002(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    .line 182
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)V

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$100(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$102(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 190
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$302(Lcom/android/server/usb/UsbDebuggingManager;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 191
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$402(Lcom/android/server/usb/UsbDebuggingManager;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "fingerprints":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprints do not match. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$700(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v3, "OK"

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "fingerprints":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v3, "NO"

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 218
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v3, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$602(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$900(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$1000(Lcom/android/server/usb/UsbDebuggingManager;)V

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
