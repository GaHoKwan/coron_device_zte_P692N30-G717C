.class Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;
.super Ljava/lang/Object;
.source "DlbApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/instoredemoapp/DlbApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DsClientSettingsData"
.end annotation


# instance fields
.field public mDsClientSettings:Landroid/dolby/DsClientSettings;

.field public mIeqPreset:I

.field public mProfile:I

.field final synthetic this$0:Lcom/dolby/instoredemoapp/DlbApController;


# direct methods
.method public constructor <init>(Lcom/dolby/instoredemoapp/DlbApController;IILandroid/dolby/DsClientSettings;)V
    .locals 0
    .parameter
    .parameter "profile"
    .parameter "ieq"
    .parameter "dscs"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->this$0:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p2, p0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->mProfile:I

    .line 127
    iput p3, p0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->mIeqPreset:I

    .line 128
    iput-object p4, p0, Lcom/dolby/instoredemoapp/DlbApController$DsClientSettingsData;->mDsClientSettings:Landroid/dolby/DsClientSettings;

    .line 129
    return-void
.end method
