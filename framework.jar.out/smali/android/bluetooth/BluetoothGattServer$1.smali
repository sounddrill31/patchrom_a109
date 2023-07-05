.class Landroid/bluetooth/BluetoothGattServer$1;
.super Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.source "BluetoothGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGattServer;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattServer;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcInstId"    # I
    .param p7, "srvcId"    # Landroid/os/ParcelUuid;
    .param p8, "charInstId"    # I
    .param p9, "charId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 145
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 146
    .local v6, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 147
    .local v1, "charUuid":Ljava/util/UUID;
    const-string v7, "BluetoothGattServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCharacteristicReadRequest() - service="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", characteristic="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", transId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", charInstId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v7, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v7}, Landroid/bluetooth/BluetoothGattServer;->access$300(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 152
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    move/from16 v0, p6

    invoke-virtual {v7, v6, v0, p5}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 153
    .local v5, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v5, :cond_0

    .line 154
    const-string v7, "BluetoothGattServer"

    const-string/jumbo v8, "onCharacteristicReadRequest() - service == null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 159
    .local v2, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v2, :cond_1

    .line 160
    const-string v7, "BluetoothGattServer"

    const-string/jumbo v8, "onCharacteristicReadRequest() - characteristic == null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_1
    :try_start_0
    iget-object v7, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v7}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v7

    invoke-virtual {v7, v3, p2, p3, v2}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v4

    .line 167
    .local v4, "ex":Ljava/lang/Exception;
    const-string v7, "BluetoothGattServer"

    const-string v8, "Unhandled exception in callback"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 14
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "srvcType"    # I
    .param p8, "srvcInstId"    # I
    .param p9, "srvcId"    # Landroid/os/ParcelUuid;
    .param p10, "charInstId"    # I
    .param p11, "charId"    # Landroid/os/ParcelUuid;
    .param p12, "value"    # [B

    .prologue
    .line 223
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    .line 224
    .local v13, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p11 .. p11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 225
    .local v10, "charUuid":Ljava/util/UUID;
    const-string v2, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCharacteristicWriteRequest() - service="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", characteristic="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", transId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", srvcType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", srvcInstId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", charInstId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$300(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 231
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    move/from16 v0, p8

    move/from16 v1, p7

    invoke-virtual {v2, v13, v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v12

    .line 232
    .local v12, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v12, :cond_0

    .line 233
    const-string v2, "BluetoothGattServer"

    const-string/jumbo v4, "onCharacteristicWriteRequest() - service == null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {v12, v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 238
    .local v5, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v5, :cond_1

    .line 239
    const-string v2, "BluetoothGattServer"

    const-string/jumbo v4, "onCharacteristicWriteRequest() - characteristic == null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    move/from16 v4, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p3

    move-object/from16 v9, p12

    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v11

    .line 247
    .local v11, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGattServer"

    const-string v4, "Unhandled exception in callback"

    invoke-static {v2, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcInstId"    # I
    .param p7, "srvcId"    # Landroid/os/ParcelUuid;
    .param p8, "charInstId"    # I
    .param p9, "charId"    # Landroid/os/ParcelUuid;
    .param p10, "descrId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 179
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 180
    .local v9, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 181
    .local v2, "charUuid":Ljava/util/UUID;
    invoke-virtual/range {p10 .. p10}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 182
    .local v4, "descrUuid":Ljava/util/UUID;
    const-string v10, "BluetoothGattServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCharacteristicReadRequest() - service="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", characteristic="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", descriptor="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", transId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isLong="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", srvcType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", srvcInstId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", charInstId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->access$300(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 190
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    move/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v10, v9, v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 191
    .local v8, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v8, :cond_0

    .line 192
    const-string v10, "BluetoothGattServer"

    const-string/jumbo v11, "onDescriptorReadRequest() - service == null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 197
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v3, :cond_1

    .line 198
    const-string v10, "BluetoothGattServer"

    const-string/jumbo v11, "onDescriptorReadRequest() - characteristic == null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v5

    .line 203
    .local v5, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v5, :cond_2

    .line 204
    const-string v10, "BluetoothGattServer"

    const-string/jumbo v11, "onDescriptorReadRequest() - descriptor == null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    :try_start_0
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v6, p2, v0, v5}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v7

    .line 211
    .local v7, "ex":Ljava/lang/Exception;
    const-string v10, "BluetoothGattServer"

    const-string v11, "Unhandled exception in callback"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "srvcType"    # I
    .param p8, "srvcInstId"    # I
    .param p9, "srvcId"    # Landroid/os/ParcelUuid;
    .param p10, "charInstId"    # I
    .param p11, "charId"    # Landroid/os/ParcelUuid;
    .param p12, "descrId"    # Landroid/os/ParcelUuid;
    .param p13, "value"    # [B

    .prologue
    .line 261
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v15

    .line 262
    .local v15, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p11 .. p11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 263
    .local v10, "charUuid":Ljava/util/UUID;
    invoke-virtual/range {p12 .. p12}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    .line 264
    .local v12, "descrUuid":Ljava/util/UUID;
    const-string v2, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDescriptorWriteRequest() - service="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", characteristic="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", descriptor="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", transId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", offset="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", length="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", isPrep="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", needRsp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", srvcType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", srvcInstId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", charInstId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$300(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 274
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    move/from16 v0, p8

    move/from16 v1, p7

    invoke-virtual {v2, v15, v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v14

    .line 275
    .local v14, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v14, :cond_0

    .line 276
    const-string v2, "BluetoothGattServer"

    const-string/jumbo v4, "onDescriptorWriteRequest() - service == null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {v14, v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v11

    .line 281
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v11, :cond_1

    .line 282
    const-string v2, "BluetoothGattServer"

    const-string/jumbo v4, "onDescriptorWriteRequest() - characteristic == null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v5

    .line 287
    .local v5, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v5, :cond_2

    .line 288
    const-string v2, "BluetoothGattServer"

    const-string/jumbo v4, "onDescriptorWriteRequest() - descriptor == null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    move/from16 v4, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p3

    move-object/from16 v9, p13

    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v13

    .line 296
    .local v13, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGattServer"

    const-string v4, "Unhandled exception in callback"

    invoke-static {v2, v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onExecuteWrite(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "execWrite"    # Z

    .prologue
    .line 306
    const-string v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExecuteWrite() - device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", transId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "execWrite="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$300(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 311
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 312
    const-string v2, "BluetoothGattServer"

    const-string/jumbo v3, "onExecuteWrite() - device == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGattServer"

    const-string v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 94
    const-string v0, "BluetoothGattServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanResult() - Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RSSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public onServerConnectionState(IIZLjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServerConnectionState() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serverIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->access$300(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz p3, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v3, p1, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BluetoothGattServer"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onServerRegistered(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I

    .prologue
    .line 76
    const-string v0, "BluetoothGattServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServerRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->access$000(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothGattServer;->access$202(Landroid/bluetooth/BluetoothGattServer;I)I

    .line 81
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->access$000(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 86
    :goto_0
    monitor-exit v1

    .line 87
    return-void

    .line 84
    :cond_0
    const-string v0, "BluetoothGattServer"

    const-string/jumbo v2, "onServerRegistered: mCallback is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceAdded(IIILandroid/os/ParcelUuid;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 121
    if-nez p4, :cond_0

    const/4 v2, 0x0

    .line 122
    .local v2, "srvcUuid":Ljava/util/UUID;
    :goto_0
    const-string v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceAdded() - service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srvcInstId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srvcType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v3, v2, p3, p2}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 126
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v1, :cond_1

    .line 127
    const-string v3, "BluetoothGattServer"

    const-string/jumbo v4, "onServiceAdded() - service == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_1
    return-void

    .line 121
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "srvcUuid":Ljava/util/UUID;
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    goto :goto_0

    .line 132
    .restart local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    .restart local v2    # "srvcUuid":Ljava/util/UUID;
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "BluetoothGattServer"

    const-string v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
