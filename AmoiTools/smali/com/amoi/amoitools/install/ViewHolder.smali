.class public Lcom/amoi/amoitools/install/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field public mIcon:Landroid/widget/ImageView;

.field public mStatus:Landroid/widget/TextView;

.field public mVersion:Landroid/widget/TextView;

.field public mfileName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/amoi/amoitools/install/ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/amoi/amoitools/install/ViewHolder;->mfileName:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/amoi/amoitools/install/ViewHolder;->mVersion:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/amoi/amoitools/install/ViewHolder;->mStatus:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/amoi/amoitools/install/ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method
