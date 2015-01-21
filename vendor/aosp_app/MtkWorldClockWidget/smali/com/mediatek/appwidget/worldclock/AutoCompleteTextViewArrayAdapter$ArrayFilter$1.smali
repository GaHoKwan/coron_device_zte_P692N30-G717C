.class Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewArrayAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;

.field final synthetic val$prefixString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 511
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter.1;"
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;->this$1:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;

    iput-object p2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;->val$prefixString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter.1;"
    .local p1, lhs:Ljava/lang/Object;,"TT;"
    .local p2, rhs:Ljava/lang/Object;,"TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .local v0, slhs:Ljava/lang/String;
    move-object v1, p2

    .line 516
    check-cast v1, Ljava/lang/String;

    .line 518
    .local v1, srhs:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;->val$prefixString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter$1;->val$prefixString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method
