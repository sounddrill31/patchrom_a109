.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 53
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 74
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 75
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 68
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 574
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 576
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 577
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 583
    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010230

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 588
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 589
    .local v1, "style":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 590
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 591
    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 596
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "style":Ljava/lang/CharSequence;
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 578
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 579
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 581
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 126
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 122
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 79
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 80
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "sps":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 82
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 83
    aget-object v1, v2, v0

    .line 84
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 85
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 82
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    .line 600
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 601
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    .line 686
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 608
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 609
    .local v0, "a":I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 611
    .local v1, "b":I
    sget-boolean v7, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "BaseInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Composing span: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_1
    if-ge v1, v0, :cond_2

    .line 614
    move v6, v0

    .line 615
    .local v6, "tmp":I
    move v0, v1

    .line 616
    move v1, v6

    .line 619
    .end local v6    # "tmp":I
    :cond_2
    if-eq v0, v10, :cond_4

    if-eq v1, v10, :cond_4

    .line 620
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 633
    :cond_3
    :goto_1
    if-eqz p3, :cond_9

    .line 634
    const/4 v5, 0x0

    .line 635
    .local v5, "sp":Landroid/text/Spannable;
    instance-of v7, p1, Landroid/text/Spannable;

    if-nez v7, :cond_7

    .line 636
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .end local v5    # "sp":Landroid/text/Spannable;
    invoke-direct {v5, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 637
    .restart local v5    # "sp":Landroid/text/Spannable;
    move-object p1, v5

    .line 638
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 639
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v7, :cond_8

    .line 640
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v3, v7, :cond_8

    .line 641
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v9

    const/16 v10, 0x121

    invoke-interface {v5, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 622
    .end local v3    # "i":I
    .end local v5    # "sp":Landroid/text/Spannable;
    :cond_4
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 623
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 624
    if-gez v0, :cond_5

    const/4 v0, 0x0

    .line 625
    :cond_5
    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 626
    :cond_6
    if-ge v1, v0, :cond_3

    .line 627
    move v6, v0

    .line 628
    .restart local v6    # "tmp":I
    move v0, v1

    .line 629
    move v1, v6

    goto :goto_1

    .end local v6    # "tmp":I
    .restart local v5    # "sp":Landroid/text/Spannable;
    :cond_7
    move-object v5, p1

    .line 646
    check-cast v5, Landroid/text/Spannable;

    .line 648
    :cond_8
    invoke-static {v5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 651
    .end local v5    # "sp":Landroid/text/Spannable;
    :cond_9
    sget-boolean v7, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "BaseInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Replacing from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", composing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_a
    sget-boolean v7, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 656
    new-instance v4, Landroid/util/LogPrinter;

    const-string v7, "BaseInputConnection"

    invoke-direct {v4, v11, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 657
    .local v4, "lp":Landroid/util/LogPrinter;
    const-string v7, "Current text:"

    invoke-virtual {v4, v7}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 658
    const-string v7, "  "

    invoke-static {v2, v4, v7}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 659
    const-string v7, "Composing text:"

    invoke-virtual {v4, v7}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 660
    const-string v7, "  "

    invoke-static {p1, v4, v7}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 667
    .end local v4    # "lp":Landroid/util/LogPrinter;
    :cond_b
    if-lez p2, :cond_f

    .line 668
    add-int/lit8 v7, v1, -0x1

    add-int/2addr p2, v7

    .line 672
    :goto_3
    if-gez p2, :cond_c

    const/4 p2, 0x0

    .line 673
    :cond_c
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v7

    if-le p2, v7, :cond_d

    .line 674
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 675
    :cond_d
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 677
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 679
    sget-boolean v7, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 680
    new-instance v4, Landroid/util/LogPrinter;

    const-string v7, "BaseInputConnection"

    invoke-direct {v4, v11, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 681
    .restart local v4    # "lp":Landroid/util/LogPrinter;
    const-string v7, "Final text:"

    invoke-virtual {v4, v7}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 682
    const-string v7, "  "

    invoke-static {v2, v4, v7}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 685
    .end local v4    # "lp":Landroid/util/LogPrinter;
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 670
    :cond_f
    add-int/2addr p2, v0

    goto :goto_3
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 535
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 540
    .local v8, "content":Landroid/text/Editable;
    if-eqz v8, :cond_0

    .line 541
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 542
    .local v6, "N":I
    if-eqz v6, :cond_0

    .line 545
    if-ne v6, v2, :cond_5

    .line 548
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    .line 549
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 551
    :cond_2
    new-array v7, v2, [C

    .line 552
    .local v7, "chars":[C
    invoke-interface {v8, v5, v2, v7, v5}, Landroid/text/Editable;->getChars(II[CI)V

    .line 553
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 554
    .local v9, "events":[Landroid/view/KeyEvent;
    if-eqz v9, :cond_5

    .line 555
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_4

    .line 556
    sget-boolean v1, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "BaseInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_3
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 555
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 559
    :cond_4
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 566
    .end local v7    # "chars":[C
    .end local v9    # "events":[Landroid/view/KeyEvent;
    .end local v10    # "i":I
    :cond_5
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 568
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 569
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 93
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 97
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 98
    .local v3, "sps":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 99
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 100
    aget-object v2, v3, v1

    .line 101
    .local v2, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 102
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "fl":I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 109
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 117
    .end local v0    # "fl":I
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 173
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    .line 174
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 175
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 198
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 200
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 13
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v12, -0x1

    .line 211
    sget-boolean v9, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "BaseInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteSurroundingText "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 214
    .local v4, "content":Landroid/text/Editable;
    if-nez v4, :cond_1

    const/4 v9, 0x0

    .line 260
    :goto_0
    return v9

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 218
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 219
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 221
    .local v1, "b":I
    if-le v0, v1, :cond_2

    .line 222
    move v8, v0

    .line 223
    .local v8, "tmp":I
    move v0, v1

    .line 224
    move v1, v8

    .line 228
    .end local v8    # "tmp":I
    :cond_2
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 229
    .local v2, "ca":I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 230
    .local v3, "cb":I
    if-ge v3, v2, :cond_3

    .line 231
    move v8, v2

    .line 232
    .restart local v8    # "tmp":I
    move v2, v3

    .line 233
    move v3, v8

    .line 235
    .end local v8    # "tmp":I
    :cond_3
    if-eq v2, v12, :cond_5

    if-eq v3, v12, :cond_5

    .line 236
    if-ge v2, v0, :cond_4

    move v0, v2

    .line 237
    :cond_4
    if-le v3, v1, :cond_5

    move v1, v3

    .line 240
    :cond_5
    const/4 v5, 0x0

    .line 242
    .local v5, "deleted":I
    if-lez p1, :cond_7

    .line 243
    sub-int v7, v0, p1

    .line 244
    .local v7, "start":I
    if-gez v7, :cond_6

    const/4 v7, 0x0

    .line 245
    :cond_6
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 246
    sub-int v5, v0, v7

    .line 249
    .end local v7    # "start":I
    :cond_7
    if-lez p2, :cond_9

    .line 250
    sub-int/2addr v1, v5

    .line 252
    add-int v6, v1, p2

    .line 253
    .local v6, "end":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_8

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 255
    :cond_8
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 258
    .end local v6    # "end":I
    :cond_9
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 260
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    .line 269
    sget-boolean v1, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseInputConnection"

    const-string v2, "finishComposingText"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 271
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 273
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 275
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 276
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 278
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .param p1, "reqModes"    # I

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-boolean v5, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v5, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v4

    .line 289
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 290
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 292
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 293
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 295
    .local v1, "b":I
    if-le v0, v1, :cond_2

    .line 296
    move v3, v0

    .line 297
    .local v3, "tmp":I
    move v0, v1

    .line 298
    move v1, v3

    .line 301
    .end local v3    # "tmp":I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 138
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 347
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 348
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-object v4

    .line 350
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 351
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 353
    .local v1, "b":I
    if-le v0, v1, :cond_2

    .line 354
    move v3, v0

    .line 355
    .local v3, "tmp":I
    move v0, v1

    .line 356
    move v1, v3

    .line 359
    .end local v3    # "tmp":I
    :cond_2
    if-eq v0, v1, :cond_0

    .line 361
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    .line 362
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 364
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 373
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 397
    :goto_0
    return-object v4

    .line 375
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 376
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 378
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 379
    move v3, v0

    .line 380
    .local v3, "tmp":I
    move v0, v1

    .line 381
    move v1, v3

    .line 385
    .end local v3    # "tmp":I
    :cond_1
    if-gez v1, :cond_2

    .line 386
    const/4 v1, 0x0

    .line 389
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 390
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 394
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 395
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 397
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 317
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 339
    :goto_0
    return-object v4

    .line 319
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 320
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 322
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 323
    move v3, v0

    .line 324
    .local v3, "tmp":I
    move v0, v1

    .line 325
    move v1, v3

    .line 328
    .end local v3    # "tmp":I
    :cond_1
    if-gtz v0, :cond_2

    .line 329
    const-string v4, ""

    goto :goto_0

    .line 332
    :cond_2
    if-le p1, v0, :cond_3

    .line 333
    move p1, v0

    .line 336
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 337
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 339
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .param p1, "actionCode"    # I

    .prologue
    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 405
    .local v1, "eventTime":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 410
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method protected reportFinish()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 530
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 512
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 514
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_0
    if-nez v0, :cond_0

    .line 515
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 519
    :cond_0
    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 522
    :cond_1
    monitor-exit v2

    .line 523
    const/4 v1, 0x0

    return v1

    .line 513
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 444
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 445
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_6

    .line 446
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 447
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 448
    move v0, p1

    .line 449
    .local v0, "a":I
    move v1, p2

    .line 450
    .local v1, "b":I
    if-le v0, v1, :cond_0

    .line 451
    move v5, v0

    .line 452
    .local v5, "tmp":I
    move v0, v1

    .line 453
    move v1, v5

    .line 456
    .end local v5    # "tmp":I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 457
    .local v4, "length":I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 458
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 459
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 460
    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    .line 462
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 463
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 464
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 465
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    .end local v3    # "i":I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 474
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 475
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 477
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "length":I
    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v3, 0x1

    .line 438
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComposingText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-direct {p0, p1, p2, v3}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 440
    return v3
.end method

.method public setSelection(II)Z
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v2, 0x1

    .line 485
    sget-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "BaseInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSelection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 487
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_2

    const/4 v2, 0x0

    .line 504
    :cond_1
    :goto_0
    return v2

    .line 488
    :cond_2
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 489
    .local v1, "len":I
    if-gt p1, v1, :cond_1

    if-gt p2, v1, :cond_1

    .line 496
    if-ne p1, p2, :cond_3

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 500
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 502
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
