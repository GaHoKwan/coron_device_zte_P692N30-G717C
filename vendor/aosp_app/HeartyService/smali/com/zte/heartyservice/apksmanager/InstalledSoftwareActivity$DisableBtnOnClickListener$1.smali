.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$1;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$1;->this$1:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1247
    return-void
.end method
