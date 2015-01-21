.class Lcom/mediatek/lbs/em/MyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field text2:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/lbs/em/MyAdapter;


# direct methods
.method private constructor <init>(Lcom/mediatek/lbs/em/MyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/lbs/em/MyAdapter$ViewHolder;->this$0:Lcom/mediatek/lbs/em/MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/lbs/em/MyAdapter;Lcom/mediatek/lbs/em/MyAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/MyAdapter$ViewHolder;-><init>(Lcom/mediatek/lbs/em/MyAdapter;)V

    return-void
.end method
