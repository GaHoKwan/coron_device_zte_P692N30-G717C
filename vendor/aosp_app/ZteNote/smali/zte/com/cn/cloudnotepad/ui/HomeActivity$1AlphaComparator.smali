.class final Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortDateGroupTitleList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
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
.field private mOrder:I

.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;I)V
    .locals 1
    .parameter
    .parameter "order"

    .prologue
    .line 936
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;->sCollator:Ljava/text/Collator;

    .line 935
    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;->mOrder:I

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

    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 939
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;->mOrder:I

    if-nez v0, :cond_0

    .line 940
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    .line 942
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
