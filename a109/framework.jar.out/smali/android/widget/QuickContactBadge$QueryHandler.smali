.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 310
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 311
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 312
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 316
    const/4 v9, 0x0

    .line 317
    .local v9, "lookupUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 318
    .local v4, "createUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 319
    .local v10, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v6, p2

    .line 321
    .local v6, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 352
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 353
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_1
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11, v9}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 358
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 360
    if-eqz v10, :cond_5

    if-eqz v9, :cond_5

    .line 362
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v13, 0x3

    iget-object v14, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v14, v14, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v11, v12, v9, v13, v14}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 380
    :cond_2
    :goto_2
    return-void

    .line 319
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 323
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v6    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v10, 0x1

    .line 324
    :try_start_0
    const-string/jumbo v11, "tel"

    const-string/jumbo v12, "uri_content"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 328
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 329
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 330
    .local v2, "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 332
    goto :goto_1

    .line 337
    .end local v2    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v10, 0x1

    .line 338
    const-string/jumbo v11, "mailto"

    const-string/jumbo v12, "uri_content"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 343
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 344
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 345
    .restart local v2    # "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 346
    .restart local v8    # "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 352
    .end local v2    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz p3, :cond_4

    .line 353
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_4
    throw v11

    .line 364
    :cond_5
    if-eqz v4, :cond_2

    .line 366
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v7, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_6

    .line 369
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 370
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "uri_content"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 375
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_6
    :try_start_1
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 376
    :catch_0
    move-exception v5

    .line 377
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    const-string v11, "QuickContactBadge"

    const-string v12, "Activity not exist"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
