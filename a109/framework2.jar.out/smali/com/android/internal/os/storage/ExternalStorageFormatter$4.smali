.class Lcom/android/internal/os/storage/ExternalStorageFormatter$4;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 245
    .local v1, "ret":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    const/4 v2, 0x1

    .line 256
    :goto_0
    if-eqz v2, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 280
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed formatting volume "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$4$1;

    invoke-direct {v4, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$4$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$4;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z

    .line 267
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlwaysReset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    :goto_2
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 270
    :cond_1
    if-nez v1, :cond_2

    .line 272
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 273
    :catch_1
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "format fail, not mount!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
