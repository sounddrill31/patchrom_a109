.class final Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x5

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x6

.field public static final MSG_DESTROY_SERVICE:I = 0x10

.field public static final MSG_DISPATCH_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x9

.field public static final MSG_DISPATCH_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0xa

.field public static final MSG_DISPATCH_PRINTERS_ADDED:I = 0x3

.field public static final MSG_DISPATCH_PRINTERS_REMOVED:I = 0x4

.field public static final MSG_DISPATCH_START_PRINTER_DISCOVERY:I = 0xb

.field public static final MSG_DISPATCH_STOP_PRINTER_DISCOVERY:I = 0xc

.field public static final MSG_PRINTERS_ADDED:I = 0x1

.field public static final MSG_PRINTERS_REMOVED:I = 0x2

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x7

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0xe

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x8

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0xf

.field public static final MSG_VALIDATE_PRINTERS:I = 0xd


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 1409
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1410
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1415
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1514
    :goto_0
    return-void

    .line 1417
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1418
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1419
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1420
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1421
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v2, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    goto :goto_0

    .line 1425
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1426
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1427
    .restart local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 1428
    .local v5, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1429
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v2, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1000(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1433
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    .end local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1434
    .restart local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1100(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1438
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 1439
    .restart local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1200(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1443
    .end local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1444
    .local v6, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    goto :goto_0

    .line 1448
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1449
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    goto :goto_0

    .line 1453
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1454
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_0

    .line 1458
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1459
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    goto :goto_0

    .line 1463
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1464
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1300(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1468
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1469
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1400(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_0

    .line 1473
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1474
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1475
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1476
    .local v4, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1477
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1500(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1481
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1482
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1600(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1486
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1487
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1488
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1489
    .restart local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1490
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v6, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1700(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1494
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1495
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1496
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    .line 1497
    .local v3, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1498
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1800(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_0

    .line 1502
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1503
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1504
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    .line 1505
    .restart local v3    # "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1506
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_0

    .line 1510
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1511
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto/16 :goto_0

    .line 1415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
