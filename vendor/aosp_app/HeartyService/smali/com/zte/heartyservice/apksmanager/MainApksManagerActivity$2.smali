.class Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$2;
.super Ljava/lang/Object;
.source "MainApksManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->createDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->removeDialog(I)V

    .line 196
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setMenuItemEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->deleteApksTask()V

    .line 198
    return-void
.end method
