.class final Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "_tag"
    .parameter "_view"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;->tag:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;->view:Landroid/view/View;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$TabsAdapter$TabInfo;->view:Landroid/view/View;

    return-object v0
.end method
