.class Lcom/mediatek/filemanager/FileManagerSearchActivity$1;
.super Ljava/lang/Object;
.source "FileManagerSearchActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/FileManagerSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/FileManagerSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$1;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity$1;->this$0:Lcom/mediatek/filemanager/FileManagerSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method
