.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$8;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->initActionBarSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$8;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 1
    .parameter "position"
    .parameter "itemId"

    .prologue
    .line 659
    const/4 v0, 0x1

    return v0
.end method
