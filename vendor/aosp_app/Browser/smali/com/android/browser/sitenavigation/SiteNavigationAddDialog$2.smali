.class Lcom/android/browser/sitenavigation/SiteNavigationAddDialog$2;
.super Ljava/lang/Object;
.source "SiteNavigationAddDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/sitenavigation/SiteNavigationAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/sitenavigation/SiteNavigationAddDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/sitenavigation/SiteNavigationAddDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/browser/sitenavigation/SiteNavigationAddDialog$2;->this$0:Lcom/android/browser/sitenavigation/SiteNavigationAddDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/browser/sitenavigation/SiteNavigationAddDialog$2;->this$0:Lcom/android/browser/sitenavigation/SiteNavigationAddDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 121
    return-void
.end method
