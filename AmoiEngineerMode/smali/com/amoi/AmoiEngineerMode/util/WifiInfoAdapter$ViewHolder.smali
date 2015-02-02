.class public Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WifiInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mMac:Landroid/widget/TextView;

.field public mRssi:Landroid/widget/TextView;

.field public mSsid:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->this$0:Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mSsid:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mRssi:Landroid/widget/TextView;

    .line 104
    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/util/WifiInfoAdapter$ViewHolder;->mMac:Landroid/widget/TextView;

    return-void
.end method
