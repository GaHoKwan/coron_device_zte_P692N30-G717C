.class Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;
.super Ljava/lang/Object;
.source "NotesData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/data/NotesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/data/NotesData;


# direct methods
.method private constructor <init>(Lzte/com/cn/cloudnotepad/data/NotesData;)V
    .locals 1
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/cloudnotepad/data/NotesData;Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;-><init>(Lzte/com/cn/cloudnotepad/data/NotesData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const v5, 0x7f090036

    const v4, 0x7f090035

    const v3, 0x7f090034

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 380
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/data/NotesData;

    #getter for: Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->access$0(Lzte/com/cn/cloudnotepad/data/NotesData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/data/NotesData;

    #getter for: Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->access$0(Lzte/com/cn/cloudnotepad/data/NotesData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/data/NotesData;

    #getter for: Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->access$0(Lzte/com/cn/cloudnotepad/data/NotesData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/data/NotesData;

    #getter for: Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->access$0(Lzte/com/cn/cloudnotepad/data/NotesData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 383
    goto :goto_0

    .line 384
    :cond_3
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/data/NotesData;

    #getter for: Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->access$0(Lzte/com/cn/cloudnotepad/data/NotesData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/data/NotesData;

    #getter for: Lzte/com/cn/cloudnotepad/data/NotesData;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/data/NotesData;->access$0(Lzte/com/cn/cloudnotepad/data/NotesData;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 387
    goto :goto_0

    .line 389
    :cond_4
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/NotesData$AlphaComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
