.class Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$5;
.super Ljava/lang/Object;
.source "MainApksManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->createCustomView(Landroid/app/ActionBar;)Landroid/view/View;
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
    .line 692
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$5;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$5;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 696
    return-void
.end method
