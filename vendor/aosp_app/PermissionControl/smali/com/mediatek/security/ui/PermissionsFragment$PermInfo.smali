.class Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;
.super Ljava/lang/Object;
.source "PermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermInfo"
.end annotation


# instance fields
.field private mAppCount:Ljava/lang/String;

.field private mPermIcon:I

.field private mPermLabel:Ljava/lang/String;

.field private mPermName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionsFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/PermissionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->this$0:Lcom/mediatek/security/ui/PermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermIcon:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermIcon:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mAppCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mAppCount:Ljava/lang/String;

    return-object p1
.end method
