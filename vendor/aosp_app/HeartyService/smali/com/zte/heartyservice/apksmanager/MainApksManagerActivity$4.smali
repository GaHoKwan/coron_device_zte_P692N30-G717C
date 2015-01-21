.class Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$4;
.super Ljava/lang/Object;
.source "MainApksManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->changeCustomView(I)V
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
    .line 633
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$4;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$4;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    #setter for: Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSelectedSpinnerIndex:I
    invoke-static {v0, p3}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->access$202(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;I)I

    .line 637
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$4;->this$0:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->switchListType(I)V
    invoke-static {v0, p3}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->access$300(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;I)V

    .line 638
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
