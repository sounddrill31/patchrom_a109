.class Lcom/android/server/power/DisplayPowerController$12;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$12;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1738
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x0

    .line 1723
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1724
    const-string v3, "PowerManagerDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLightSensorListener.onSensorChanged(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$12;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$1500(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$12;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1500(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1729
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1730
    .local v1, "time":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v6

    .line 1731
    .local v0, "lux":F
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$12;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-static {v3, v1, v2, v0}, Lcom/android/server/power/DisplayPowerController;->access$1600(Lcom/android/server/power/DisplayPowerController;JF)V

    .line 1733
    .end local v0    # "lux":F
    .end local v1    # "time":J
    :cond_1
    return-void
.end method
