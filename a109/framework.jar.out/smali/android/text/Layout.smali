.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$1;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final ELLIPSIS_NORMAL:[C

.field static final ELLIPSIS_TWO_DOTS:[C

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

.field static final MAX_EMOJI:I

.field static final MIN_EMOJI:I

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field static final TAG:Ljava/lang/String; = "Layout"

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 45
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 50
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 54
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 56
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1920
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 1950
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1952
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 1955
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    .line 1956
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    return-void

    .line 58
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 59
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    .line 1950
    nop

    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    .line 1952
    :array_1
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .prologue
    .line 116
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1917
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 139
    if-gez p3, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    if-eqz p2, :cond_1

    .line 147
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 148
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 151
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 152
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 153
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 154
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 155
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 156
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 157
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 158
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 159
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 160
    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/Layout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [C
    .param p5, "x5"    # I
    .param p6, "x6"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1385
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1386
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1387
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1389
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 1390
    add-int/lit8 v15, v15, -0x1

    .line 1392
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 1393
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1394
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1396
    .local v18, "there":I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 1397
    move/from16 v18, v15

    .line 1399
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 1400
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1401
    .local v17, "st":I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1403
    .local v10, "en":I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 1404
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v11

    .line 1405
    .local v11, "h1":F
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    .line 1407
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1408
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1410
    .local v6, "right":F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1392
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1414
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1754
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1756
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_1

    .line 1778
    :cond_0
    return-void

    .line 1760
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1761
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1763
    .local v5, "linestart":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 1766
    if-ne v4, v3, :cond_3

    .line 1767
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    .line 1772
    .local v1, "c":C
    :goto_1
    add-int v0, v4, v5

    .line 1774
    .local v0, "a":I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 1775
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1763
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1769
    .end local v0    # "a":I
    .end local v1    # "c":C
    :cond_3
    const v1, 0xfeff

    .restart local v1    # "c":C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 82
    .local v1, "need":F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 83
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 85
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 86
    move v2, p2

    .line 89
    :cond_0
    invoke-static {p3, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 91
    .local v3, "w":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 92
    move v1, v3

    .line 94
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    move v0, v2

    goto :goto_0

    .line 97
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2
    .param p1, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, 0x0

    .line 1747
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 839
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 840
    .local v4, "start":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 841
    .local v5, "end":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 842
    .local v6, "dir":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 843
    .local v8, "hasTabOrEmoji":Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 845
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 846
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 849
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 850
    .local v12, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_0

    .line 851
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 855
    .end local v12    # "tabs":[Landroid/text/style/TabStopSpan;
    .restart local v9    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 856
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 857
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 858
    .local v13, "wid":F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 860
    if-eqz p4, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1

    .line 861
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v13, v2

    .line 863
    :cond_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 864
    .local v10, "left":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 866
    .local v11, "right":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 835
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .prologue
    .line 995
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 996
    .local v3, "start":I
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 997
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 998
    .local v7, "hasTabsOrEmoji":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 999
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1001
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1002
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1003
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 1004
    .local v9, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1005
    return v9

    .line 996
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v4    # "end":I
    .end local v5    # "dir":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v9    # "width":F
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 11
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 960
    .local v3, "start":I
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 962
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 963
    .local v7, "hasTabsOrEmoji":Z
    const/4 v8, 0x0

    .line 964
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 968
    .local v9, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 969
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 972
    .end local v9    # "tabs":[Landroid/text/style/TabStopSpan;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 974
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 975
    const/4 v10, 0x0

    .line 983
    :goto_1
    return v10

    .line 960
    .end local v4    # "end":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0

    .line 977
    .restart local v4    # "end":I
    .restart local v6    # "directions":Landroid/text/Layout$Directions;
    .restart local v7    # "hasTabsOrEmoji":Z
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 979
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 980
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 981
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 982
    .local v10, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_1
.end method

.method private getLineStartPos(III)I
    .locals 12
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    const/4 v11, 0x1

    .line 480
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 481
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 483
    .local v1, "dir":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    .line 484
    if-ne v1, v11, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 490
    :cond_0
    :goto_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_5

    .line 491
    if-ne v1, v11, :cond_4

    .line 492
    move v8, p2

    .line 522
    .local v8, "x":I
    :goto_1
    return v8

    .line 484
    .end local v8    # "x":I
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 485
    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    .line 486
    if-ne v1, v11, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2
    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 494
    :cond_4
    move v8, p3

    .restart local v8    # "x":I
    goto :goto_1

    .line 497
    .end local v8    # "x":I
    :cond_5
    const/4 v7, 0x0

    .line 498
    .local v7, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 499
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 500
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 501
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 503
    .local v3, "spanEnd":I
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 505
    .local v6, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_6

    .line 506
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 509
    .end local v3    # "spanEnd":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "tabSpans":[Landroid/text/style/TabStopSpan;
    .restart local v7    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 510
    .local v2, "max":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_8

    .line 511
    if-ne v1, v11, :cond_7

    .line 512
    sub-int v8, p3, v2

    .restart local v8    # "x":I
    goto :goto_1

    .line 515
    .end local v8    # "x":I
    :cond_7
    sub-int v8, p2, v2

    .restart local v8    # "x":I
    goto :goto_1

    .line 518
    .end local v8    # "x":I
    :cond_8
    and-int/lit8 v2, v2, -0x2

    .line 519
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    shr-int/lit8 v8, v9, 0x1

    .restart local v8    # "x":I
    goto :goto_1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1147
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1149
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    move v2, p3

    .line 1166
    :goto_0
    return v2

    .line 1153
    .local v0, "ch":C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0    # "ch":C
    :cond_1
    if-le p3, p2, :cond_3

    .line 1154
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1156
    .restart local v0    # "ch":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1157
    add-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 1160
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .end local v0    # "ch":C
    :cond_3
    move v2, p3

    .line 1166
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .param p1, "offset"    # I

    .prologue
    .line 1256
    if-nez p1, :cond_0

    .line 1257
    const/4 v7, 0x0

    .line 1282
    :goto_0
    return v7

    .line 1259
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1260
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1262
    .local v0, "c":C
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 1263
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1265
    .local v1, "c1":C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 1266
    add-int/lit8 p1, p1, -0x1

    .line 1269
    .end local v1    # "c1":C
    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1270
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1273
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    .line 1274
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v7, v6

    .line 1275
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1277
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1278
    move p1, v5

    .line 1273
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    :cond_3
    move v7, p1

    .line 1282
    goto :goto_0
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 15
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 1202
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 1203
    .local v12, "line":I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1204
    .local v4, "lineStart":I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1205
    .local v5, "lineEnd":I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1207
    .local v6, "lineDir":I
    const/4 v13, 0x0

    .line 1208
    .local v13, "lineChanged":Z
    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v10, 0x1

    .line 1210
    .local v10, "advance":Z
    :goto_1
    if-eqz v10, :cond_5

    .line 1211
    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 1212
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_4

    .line 1213
    const/4 v13, 0x1

    .line 1214
    add-int/lit8 v12, v12, 0x1

    .line 1230
    :cond_0
    :goto_2
    if-eqz v13, :cond_1

    .line 1231
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1232
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1233
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    .line 1234
    .local v14, "newDir":I
    if-eq v14, v6, :cond_1

    .line 1238
    if-nez p2, :cond_7

    const/16 p2, 0x1

    .line 1239
    :goto_3
    move v6, v14

    .line 1243
    .end local v14    # "newDir":I
    :cond_1
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1245
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1247
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1248
    sub-int v2, p1, v4

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int p1, v4, v2

    .line 1249
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v1

    move/from16 v11, p1

    .line 1250
    .end local v1    # "tl":Landroid/text/TextLine;
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local p1    # "caret":I
    .local v11, "caret":I
    :goto_4
    return v11

    .line 1208
    .end local v10    # "advance":Z
    .end local v11    # "caret":I
    .restart local p1    # "caret":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "advance":Z
    :cond_4
    move/from16 v11, p1

    .line 1216
    .end local p1    # "caret":I
    .restart local v11    # "caret":I
    goto :goto_4

    .line 1220
    .end local v11    # "caret":I
    .restart local p1    # "caret":I
    :cond_5
    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 1221
    if-lez v12, :cond_6

    .line 1222
    const/4 v13, 0x1

    .line 1223
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    move/from16 v11, p1

    .line 1225
    .end local p1    # "caret":I
    .restart local v11    # "caret":I
    goto :goto_4

    .line 1238
    .end local v11    # "caret":I
    .restart local v14    # "newDir":I
    .restart local p1    # "caret":I
    :cond_7
    const/16 p2, 0x0

    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .param p1, "line"    # I

    .prologue
    .line 1527
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_1

    .line 1528
    const/4 v6, 0x0

    .line 1559
    :cond_0
    :goto_0
    return v6

    .line 1530
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1532
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1533
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1534
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1536
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1538
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_2

    .line 1539
    const/4 v6, 0x0

    goto :goto_0

    .line 1542
    :cond_2
    const/4 v6, 0x0

    .line 1544
    .local v6, "margin":I
    if-eqz v5, :cond_3

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    :cond_3
    const/4 v3, 0x1

    .line 1547
    .local v3, "isFirstParaLine":Z
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v14, v12

    if-ge v2, v14, :cond_0

    .line 1548
    aget-object v8, v12, v2

    .line 1549
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    move v13, v3

    .line 1550
    .local v13, "useFirstLineMargin":Z
    instance-of v14, v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    .line 1551
    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1552
    .local v7, "spStart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .local v10, "spanLine":I
    move-object v14, v8

    .line 1553
    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1554
    .local v1, "count":I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_6

    const/4 v13, 0x1

    .line 1556
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_4
    :goto_3
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1547
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1544
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    .end local v13    # "useFirstLineMargin":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1554
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "isFirstParaLine":Z
    .restart local v7    # "spStart":I
    .restart local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1739
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1740
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1743
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 20
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1565
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v15

    .line 1566
    .local v15, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v19

    .line 1568
    .local v19, "tl":Landroid/text/TextLine;
    :try_start_0
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1571
    iget-boolean v3, v15, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v3, :cond_1

    .line 1572
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1573
    .local v9, "directions":Landroid/text/Layout$Directions;
    const/4 v8, 0x1

    .line 1579
    .local v8, "dir":I
    :goto_0
    iget-object v12, v15, Landroid/text/MeasuredText;->mChars:[C

    .line 1580
    .local v12, "chars":[C
    iget v14, v15, Landroid/text/MeasuredText;->mLen:I

    .line 1581
    .local v14, "len":I
    const/4 v10, 0x0

    .line 1582
    .local v10, "hasTabs":Z
    const/4 v11, 0x0

    .line 1583
    .local v11, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v14, :cond_0

    .line 1584
    aget-char v3, v12, v13

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1585
    const/4 v10, 0x1

    .line 1586
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1587
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v17, v0

    .line 1588
    .local v17, "spanned":Landroid/text/Spanned;
    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v16

    .line 1590
    .local v16, "spanEnd":I
    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/TabStopSpan;

    .line 1592
    .local v18, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1593
    new-instance v11, Landroid/text/Layout$TabStops;

    .end local v11    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v3, 0x14

    move-object/from16 v0, v18

    invoke-direct {v11, v3, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v16    # "spanEnd":I
    .end local v17    # "spanned":Landroid/text/Spanned;
    .end local v18    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v11    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_0
    move-object/from16 v3, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    .line 1599
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1600
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1602
    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1603
    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v3

    .line 1575
    .end local v8    # "dir":I
    .end local v9    # "directions":Landroid/text/Layout$Directions;
    .end local v10    # "hasTabs":Z
    .end local v11    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v12    # "chars":[C
    .end local v13    # "i":I
    .end local v14    # "len":I
    :cond_1
    :try_start_1
    iget v3, v15, Landroid/text/MeasuredText;->mDir:I

    iget-object v4, v15, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v5, 0x0

    iget-object v6, v15, Landroid/text/MeasuredText;->mChars:[C

    const/4 v7, 0x0

    iget v8, v15, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v3 .. v8}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1577
    .restart local v9    # "directions":Landroid/text/Layout$Directions;
    iget v8, v15, Landroid/text/MeasuredText;->mDir:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "dir":I
    goto :goto_0

    .line 1583
    .restart local v10    # "hasTabs":Z
    .restart local v11    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v12    # "chars":[C
    .restart local v13    # "i":I
    .restart local v14    # "len":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1602
    .end local v8    # "dir":I
    .end local v9    # "directions":Landroid/text/Layout$Directions;
    .end local v10    # "hasTabs":Z
    .end local v11    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v12    # "chars":[C
    .end local v13    # "i":I
    .end local v14    # "len":I
    :catchall_0
    move-exception v3

    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1603
    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v3
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 1682
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1683
    .local v2, "nh":F
    const/4 v0, 0x0

    .line 1685
    .local v0, "alltabs":Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 1686
    if-nez p4, :cond_0

    .line 1687
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1688
    const/4 v0, 0x1

    .line 1691
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 1692
    if-nez v0, :cond_2

    .line 1693
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 1691
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1697
    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1699
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 1700
    int-to-float v2, v3

    goto :goto_1

    .line 1703
    .end local v3    # "where":I
    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 1707
    .end local v1    # "i":I
    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .param p1, "offset"    # I

    .prologue
    const v12, 0x3ffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 746
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 747
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 748
    .local v6, "lineStart":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 749
    .local v5, "lineEnd":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 751
    .local v7, "runs":[I
    const/4 v1, -0x1

    .line 752
    .local v1, "levelAt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    .line 753
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 754
    .local v8, "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 755
    .local v3, "limit":I
    if-le v3, v5, :cond_0

    .line 756
    move v3, v5

    .line 758
    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    .line 759
    if-le p1, v8, :cond_1

    .line 791
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :goto_1
    return v9

    .line 763
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 767
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 769
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_6

    move v1, v9

    .line 773
    :cond_3
    :goto_2
    const/4 v2, -0x1

    .line 774
    .local v2, "levelBefore":I
    if-ne p1, v6, :cond_8

    .line 775
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_7

    move v2, v9

    .line 791
    :cond_4
    :goto_3
    if-ge v2, v1, :cond_b

    :goto_4
    move v9, v10

    goto :goto_1

    .line 752
    .end local v2    # "levelBefore":I
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_6
    move v1, v10

    .line 769
    goto :goto_2

    .restart local v2    # "levelBefore":I
    :cond_7
    move v2, v10

    .line 775
    goto :goto_3

    .line 777
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 778
    const/4 v0, 0x0

    :goto_5
    array-length v11, v7

    if-ge v0, v11, :cond_4

    .line 779
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 780
    .restart local v8    # "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 781
    .restart local v3    # "limit":I
    if-le v3, v5, :cond_9

    .line 782
    move v3, v5

    .line 784
    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    .line 785
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 786
    goto :goto_3

    .line 778
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_b
    move v10, v9

    .line 791
    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 186
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v7

    .line 201
    .local v7, "lineRange":J
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 202
    .local v5, "firstLine":I
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 203
    .local v6, "lastLine":I
    if-gez v6, :cond_0

    .line 210
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 205
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 207
    const-string v0, "Layout"

    const-string v1, "[draw] start"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 209
    const-string v0, "Layout"

    const-string v1, "[draw] end"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_8

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v4, :cond_0

    .line 371
    new-instance v4, Landroid/text/SpanSet;

    const-class v6, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v4, v6}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 375
    .local v11, "buffer":Landroid/text/Spanned;
    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v25

    .line 376
    .local v25, "textLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v6, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v11, v6, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v4, v4, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v4, :cond_7

    .line 379
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 380
    .local v19, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    .line 381
    .local v20, "previousLineEnd":I
    sget-object v22, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 382
    .local v22, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v23, 0x0

    .line 383
    .local v23, "spansLength":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 384
    .local v5, "paint":Landroid/text/TextPaint;
    const/16 v21, 0x0

    .line 385
    .local v21, "spanEnd":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/Layout;->mWidth:I

    .line 386
    .local v7, "width":I
    move/from16 v14, p5

    .local v14, "i":I
    :goto_0
    move/from16 v0, p6

    if-gt v14, v0, :cond_7

    .line 387
    move/from16 v12, v20

    .line 388
    .local v12, "start":I
    add-int/lit8 v4, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 389
    .local v13, "end":I
    move/from16 v20, v13

    .line 391
    move/from16 v8, v19

    .line 392
    .local v8, "ltop":I
    add-int/lit8 v4, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 393
    .local v10, "lbottom":I
    move/from16 v19, v10

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 396
    .local v9, "lbaseline":I
    move/from16 v0, v21

    if-lt v12, v0, :cond_5

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v25

    invoke-virtual {v4, v12, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v21

    .line 401
    const/16 v23, 0x0

    .line 403
    if-ne v12, v13, :cond_1

    if-nez v12, :cond_5

    .line 406
    :cond_1
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v4, v4, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v15, v4, :cond_5

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spanStarts:[I

    aget v4, v4, v15

    if-ge v4, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spanEnds:[I

    aget v4, v4, v15

    if-gt v4, v12, :cond_3

    .line 406
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 411
    :cond_3
    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v23

    if-ne v0, v4, :cond_4

    .line 413
    mul-int/lit8 v4, v23, 0x2

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v17

    .line 414
    .local v17, "newSize":I
    move/from16 v0, v17

    new-array v0, v0, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v18, v0

    .line 415
    .local v18, "newSpans":[Landroid/text/style/ParagraphStyle;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    move-object/from16 v22, v18

    .line 418
    .end local v17    # "newSize":I
    .end local v18    # "newSpans":[Landroid/text/style/ParagraphStyle;
    :cond_4
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "spansLength":I
    .local v24, "spansLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v4, [Landroid/text/style/LineBackgroundSpan;

    aget-object v4, v4, v15

    aput-object v4, v22, v23

    move/from16 v23, v24

    .end local v24    # "spansLength":I
    .restart local v23    # "spansLength":I
    goto :goto_2

    .line 423
    .end local v15    # "j":I
    :cond_5
    const/16 v16, 0x0

    .local v16, "n":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 424
    aget-object v3, v22, v16

    check-cast v3, Landroid/text/style/LineBackgroundSpan;

    .line 425
    .local v3, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v14}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 423
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 386
    .end local v3    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 431
    .end local v5    # "paint":Landroid/text/TextPaint;
    .end local v7    # "width":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v14    # "i":I
    .end local v16    # "n":I
    .end local v19    # "previousLineBottom":I
    .end local v20    # "previousLineEnd":I
    .end local v21    # "spanEnd":I
    .end local v22    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v23    # "spansLength":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v4}, Landroid/text/SpanSet;->recycle()V

    .line 436
    .end local v11    # "buffer":Landroid/text/Spanned;
    .end local v25    # "textLength":I
    :cond_8
    if-eqz p2, :cond_a

    .line 437
    if-eqz p4, :cond_9

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 438
    :cond_9
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 439
    if-eqz p4, :cond_a

    const/4 v4, 0x0

    move/from16 v0, p4

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 441
    :cond_a
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 47
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .prologue
    .line 216
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v35

    .line 217
    .local v35, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 218
    .local v36, "previousLineEnd":I
    sget-object v39, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 219
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    .line 220
    .local v38, "spanEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 221
    .local v5, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 223
    .local v11, "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 224
    .local v34, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    .line 225
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v42, 0x0

    .line 227
    .local v42, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v44

    .line 231
    .local v44, "tl":Landroid/text/TextLine;
    move/from16 v30, p2

    .local v30, "i":I
    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v0, v30

    move/from16 v1, p3

    if-gt v0, v1, :cond_15

    .line 232
    move/from16 v12, v36

    .line 233
    .local v12, "start":I
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 234
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v36

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    .line 236
    .local v13, "end":I
    move/from16 v8, v35

    .line 237
    .local v8, "ltop":I
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 238
    .local v10, "lbottom":I
    move/from16 v35, v10

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 241
    .local v9, "lbaseline":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 242
    .local v7, "dir":I
    const/16 v18, 0x0

    .line 243
    .local v18, "left":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 245
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_a

    move-object/from16 v37, v11

    .line 246
    check-cast v37, Landroid/text/Spanned;

    .line 247
    .local v37, "sp":Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v43

    .line 248
    .local v43, "textLength":I
    if-eqz v12, :cond_0

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_6

    :cond_0
    const/4 v14, 0x1

    .line 260
    .local v14, "isFirstParaLine":Z
    :goto_1
    move/from16 v0, v38

    if-lt v12, v0, :cond_3

    move/from16 v0, v30

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz v14, :cond_3

    .line 261
    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v38

    .line 263
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 265
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 266
    move-object/from16 v0, v39

    array-length v4, v0

    add-int/lit8 v33, v4, -0x1

    .local v33, "n":I
    :goto_2
    if-ltz v33, :cond_2

    .line 267
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_7

    .line 268
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v34

    .line 273
    :cond_2
    const/16 v42, 0x0

    .line 278
    .end local v33    # "n":I
    :cond_3
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v31, v0

    .line 279
    .local v31, "length":I
    const/16 v33, 0x0

    .restart local v33    # "n":I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 280
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_5

    .line 281
    aget-object v3, v39, v33

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    .line 282
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    move/from16 v45, v14

    .line 283
    .local v45, "useFirstLineMargin":Z
    instance-of v4, v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 284
    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    .line 285
    .local v29, "count":I
    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v40

    .line 286
    .local v40, "startLine":I
    add-int v4, v40, v29

    move/from16 v0, v30

    if-ge v0, v4, :cond_8

    const/16 v45, 0x1

    .line 289
    .end local v29    # "count":I
    .end local v40    # "startLine":I
    :cond_4
    :goto_4
    const/4 v4, -0x1

    if-ne v7, v4, :cond_9

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    .line 290
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 293
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    .line 279
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v45    # "useFirstLineMargin":Z
    :cond_5
    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 248
    .end local v14    # "isFirstParaLine":Z
    .end local v31    # "length":I
    .end local v33    # "n":I
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 266
    .restart local v14    # "isFirstParaLine":Z
    .restart local v33    # "n":I
    :cond_7
    add-int/lit8 v33, v33, -0x1

    goto :goto_2

    .line 286
    .restart local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .restart local v29    # "count":I
    .restart local v31    # "length":I
    .restart local v40    # "startLine":I
    .restart local v45    # "useFirstLineMargin":Z
    :cond_8
    const/16 v45, 0x0

    goto :goto_4

    .end local v29    # "count":I
    .end local v40    # "startLine":I
    :cond_9
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    .line 295
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 298
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_5

    .line 304
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "isFirstParaLine":Z
    .end local v31    # "length":I
    .end local v33    # "n":I
    .end local v37    # "sp":Landroid/text/Spanned;
    .end local v43    # "textLength":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    .line 306
    .local v26, "hasTabOrEmoji":Z
    if-eqz v26, :cond_16

    if-nez v42, :cond_16

    .line 307
    if-nez v41, :cond_c

    .line 308
    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 312
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_6
    const/16 v42, 0x1

    .line 316
    :goto_7
    move-object/from16 v28, v34

    .line 317
    .local v28, "align":Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_e

    .line 318
    const/4 v4, 0x1

    if-ne v7, v4, :cond_d

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 326
    :cond_b
    :goto_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_11

    .line 327
    const/4 v4, 0x1

    if-ne v7, v4, :cond_10

    .line 328
    move/from16 v46, v18

    .line 346
    .local v46, "x":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    .line 347
    .local v25, "directions":Landroid/text/Layout$Directions;
    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v4, :cond_14

    if-nez v26, :cond_14

    .line 349
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 354
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    :goto_a
    const-string v4, "Layout"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[drawText] "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    add-int/lit8 v30, v30, 0x1

    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_0

    .line 310
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    :cond_c
    const/16 v4, 0x14

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_6

    .line 318
    .restart local v28    # "align":Landroid/text/Layout$Alignment;
    :cond_d
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 320
    :cond_e
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_b

    .line 321
    const/4 v4, 0x1

    if-ne v7, v4, :cond_f

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_b
    goto :goto_8

    :cond_f
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 330
    :cond_10
    move/from16 v46, v6

    .restart local v46    # "x":I
    goto :goto_9

    .line 333
    .end local v46    # "x":I
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v32, v0

    .line 334
    .local v32, "max":I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_13

    .line 335
    const/4 v4, 0x1

    if-ne v7, v4, :cond_12

    .line 336
    sub-int v46, v6, v32

    .restart local v46    # "x":I
    goto/16 :goto_9

    .line 338
    .end local v46    # "x":I
    :cond_12
    sub-int v46, v18, v32

    .restart local v46    # "x":I
    goto/16 :goto_9

    .line 341
    .end local v46    # "x":I
    :cond_13
    and-int/lit8 v32, v32, -0x2

    .line 342
    add-int v4, v6, v18

    sub-int v4, v4, v32

    shr-int/lit8 v46, v4, 0x1

    .restart local v46    # "x":I
    goto/16 :goto_9

    .end local v32    # "max":I
    .restart local v25    # "directions":Landroid/text/Layout$Directions;
    :cond_14
    move-object/from16 v19, v44

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    .line 351
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 352
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v44

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_a

    .line 357
    .end local v6    # "right":I
    .end local v7    # "dir":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v18    # "left":I
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    .end local v26    # "hasTabOrEmoji":Z
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_15
    invoke-static/range {v44 .. v44}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 358
    return-void

    .restart local v6    # "right":I
    .restart local v7    # "dir":I
    .restart local v8    # "ltop":I
    .restart local v9    # "lbaseline":I
    .restart local v10    # "lbottom":I
    .restart local v12    # "start":I
    .restart local v13    # "end":I
    .restart local v18    # "left":I
    .restart local v26    # "hasTabOrEmoji":Z
    :cond_16
    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_7
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 1310
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1312
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1313
    .local v7, "line":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 1314
    .local v8, "top":I
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1316
    .local v0, "bottom":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    .line 1317
    .local v2, "clamped":Z
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    .line 1318
    .local v5, "h1":F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    .line 1320
    .local v6, "h2":F
    :goto_0
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    or-int v1, v9, v10

    .line 1322
    .local v1, "caps":I
    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1323
    .local v4, "fn":I
    const/4 v3, 0x0

    .line 1325
    .local v3, "dist":I
    if-nez v1, :cond_0

    if-eqz v4, :cond_2

    .line 1326
    :cond_0
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    .line 1328
    if-eqz v4, :cond_1

    .line 1329
    add-int/2addr v8, v3

    .line 1330
    :cond_1
    if-eqz v1, :cond_2

    .line 1331
    sub-int/2addr v0, v3

    .line 1334
    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 1335
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1336
    :cond_3
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    .line 1337
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1339
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_8

    .line 1340
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1341
    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1350
    :goto_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    .line 1351
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1352
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1353
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1354
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1366
    :cond_5
    :goto_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 1367
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1368
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1369
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1370
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1381
    :cond_6
    :goto_3
    return-void

    .end local v1    # "caps":I
    .end local v3    # "dist":I
    .end local v4    # "fn":I
    .end local v6    # "h2":F
    :cond_7
    move v6, v5

    .line 1318
    goto :goto_0

    .line 1343
    .restart local v1    # "caps":I
    .restart local v3    # "dist":I
    .restart local v4    # "fn":I
    .restart local v6    # "h2":F
    :cond_8
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1344
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1346
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1347
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1355
    :cond_9
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 1356
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1357
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1359
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1360
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1362
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1363
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1371
    :cond_a
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    .line 1372
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1373
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1375
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1376
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1378
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1379
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1181
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1173
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 619
    if-eqz p2, :cond_0

    .line 620
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 621
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 622
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 623
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 625
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1135
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 1038
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1040
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1041
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1043
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1044
    move v1, v0

    goto :goto_0

    .line 1046
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1049
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1050
    const/4 v2, 0x0

    .line 1052
    .end local v2    # "low":I
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 5
    .param p1, "vertical"    # I

    .prologue
    .line 1015
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1017
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1018
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1020
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1021
    move v1, v0

    goto :goto_0

    .line 1023
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1026
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1027
    const/4 v2, 0x0

    .line 1029
    .end local v2    # "low":I
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 874
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 875
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 877
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_1

    .line 896
    :cond_0
    :goto_0
    return v5

    .line 879
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    .line 880
    if-ne v1, v7, :cond_0

    .line 881
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 884
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3

    .line 885
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 886
    :cond_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_4

    .line 887
    if-eq v1, v7, :cond_0

    .line 890
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 892
    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 893
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 894
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 896
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 4
    .param p1, "line"    # I

    .prologue
    .line 936
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 937
    .local v0, "margin":F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 938
    .local v1, "signedExtent":F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    return v1

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 451
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v6

    .line 452
    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 454
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    monitor-exit v6

    .line 465
    :goto_0
    return-wide v4

    .line 457
    :cond_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 458
    .local v2, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 459
    .local v1, "dbottom":I
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 462
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 464
    .local v0, "bottom":I
    if-lt v3, v0, :cond_1

    invoke-static {v5, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_0

    .line 459
    .end local v0    # "bottom":I
    .end local v1    # "dbottom":I
    .end local v2    # "dtop":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 465
    .restart local v0    # "bottom":I
    .restart local v1    # "dbottom":I
    .restart local v2    # "dtop":I
    .restart local v3    # "top":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/4 v6, -0x1

    .line 905
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 906
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 908
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 909
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 927
    :goto_0
    return v5

    .line 910
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 911
    if-ne v1, v6, :cond_1

    .line 912
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 915
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 916
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 917
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 918
    if-ne v1, v6, :cond_4

    .line 919
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 921
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 923
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 924
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 925
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 927
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1143
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 4
    .param p1, "line"    # I

    .prologue
    .line 946
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 947
    .local v0, "margin":F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 948
    .local v1, "signedExtent":F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    return v1

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .prologue
    .line 1060
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 1061
    .local v13, "max":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1062
    .local v14, "min":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1064
    .local v6, "dirs":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1065
    add-int/lit8 v13, v13, 0x1

    .line 1067
    :cond_0
    move v4, v14

    .line 1068
    .local v4, "best":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1070
    .local v5, "bestdist":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    .line 1071
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 1072
    .local v9, "here":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 1073
    .local v17, "there":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x4000000

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    const/16 v16, -0x1

    .line 1075
    .local v16, "swap":I
    :goto_1
    move/from16 v0, v17

    if-le v0, v13, :cond_1

    .line 1076
    move/from16 v17, v13

    .line 1077
    :cond_1
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, "high":I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 1079
    .local v12, "low":I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1080
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1081
    .local v8, "guess":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1083
    .local v2, "adguess":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    .line 1084
    move v10, v8

    goto :goto_2

    .line 1073
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    :cond_2
    const/16 v16, 0x1

    goto :goto_1

    .line 1086
    .restart local v2    # "adguess":I
    .restart local v8    # "guess":I
    .restart local v10    # "high":I
    .restart local v12    # "low":I
    .restart local v16    # "swap":I
    :cond_3
    move v12, v8

    goto :goto_2

    .line 1089
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    .line 1090
    add-int/lit8 v12, v9, 0x1

    .line 1092
    :cond_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 1093
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1095
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1097
    .local v7, "dist":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1098
    .local v3, "aft":I
    move/from16 v0, v17

    if-ge v3, v0, :cond_6

    .line 1099
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1101
    .local v15, "other":F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    .line 1102
    move v7, v15

    .line 1103
    move v12, v3

    .line 1107
    .end local v15    # "other":F
    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    .line 1108
    move v5, v7

    .line 1109
    move v4, v12

    .line 1113
    .end local v3    # "aft":I
    .end local v7    # "dist":F
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1115
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 1116
    move v5, v7

    .line 1117
    move v4, v9

    .line 1070
    :cond_8
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 1121
    .end local v7    # "dist":F
    .end local v9    # "here":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    .end local v17    # "there":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1123
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gtz v18, :cond_a

    .line 1124
    move v5, v7

    .line 1125
    move v4, v13

    .line 1128
    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1194
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .param p1, "line"    # I

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1481
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1482
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1483
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1487
    .local v3, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1488
    .local v2, "spanLength":I
    if-lez v2, :cond_0

    .line 1489
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1493
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spanLength":I
    .end local v3    # "spans":[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1500
    const/4 v1, 0x0

    .line 1501
    .local v1, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1502
    .local v0, "dir":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1505
    .end local v1    # "left":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "left":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v1

    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1512
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1513
    .local v1, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1514
    .local v0, "dir":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1517
    .end local v1    # "right":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "right":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 809
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 810
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 828
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 829
    .local v0, "trailing":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1423
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1425
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1428
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1429
    move/from16 v17, p2

    .line 1430
    .local v17, "temp":I
    move/from16 p2, p1

    .line 1431
    move/from16 p1, v17

    .line 1434
    .end local v17    # "temp":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1435
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1437
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1438
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1440
    .local v7, "bottom":I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1441
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 1443
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1445
    .local v18, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1448
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1449
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1455
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1456
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1457
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1458
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1455
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1452
    .end local v16    # "i":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1461
    .restart local v16    # "i":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1462
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1464
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1467
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 1468
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1470
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .prologue
    .line 562
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 567
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 692
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 693
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 694
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v8

    .line 698
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 699
    .local v7, "runs":[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 700
    .local v4, "lineStart":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 701
    .local v3, "lineEnd":I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_5

    .line 702
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_3

    move v5, v8

    .line 703
    .local v5, "paraLevel":I
    :goto_1
    if-ne p1, v4, :cond_4

    move v6, v8

    .line 704
    .local v6, "runIndex":I
    :goto_2
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_0

    move v8, v9

    goto :goto_0

    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_3
    move v5, v9

    .line 702
    goto :goto_1

    .line 703
    .restart local v5    # "paraLevel":I
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2

    .line 707
    .end local v5    # "paraLevel":I
    :cond_5
    sub-int/2addr p1, v4

    .line 708
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_0

    .line 709
    aget v10, v7, v1

    if-ne p1, v10, :cond_6

    move v8, v9

    .line 710
    goto :goto_0

    .line 708
    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method public isRtlCharAt(I)Z
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 722
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 723
    .local v3, "line":I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 724
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_1

    .line 742
    :cond_0
    :goto_0
    return v8

    .line 727
    :cond_1
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_2

    move v8, v7

    .line 728
    goto :goto_0

    .line 730
    :cond_2
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 731
    .local v5, "runs":[I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 732
    .local v4, "lineStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v5

    if-ge v1, v9, :cond_0

    .line 733
    aget v9, v5, v1

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int v6, v4, v9

    .line 736
    .local v6, "start":I
    if-lt p1, v6, :cond_4

    .line 737
    add-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v2, v9, 0x3f

    .line 738
    .local v2, "level":I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_2

    .line 732
    .end local v2    # "level":I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public isSingleLineRtoL()Z
    .locals 1

    .prologue
    .line 1910
    const/4 v0, 0x0

    return v0
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1711
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .prologue
    .line 168
    if-gez p3, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 173
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 174
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 175
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 176
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 177
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 178
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 179
    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1292
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1298
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1296
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
