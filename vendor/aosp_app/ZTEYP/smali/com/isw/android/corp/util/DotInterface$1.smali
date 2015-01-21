.class Lcom/isw/android/corp/util/DotInterface$1;
.super Ljava/lang/Object;
.source "DotInterface.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/util/DotInterface;->setDotBt(Landroid/content/Context;ILandroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$dotButton:Landroid/widget/ImageView;

.field private final synthetic val$dotCallType:I

.field private final synthetic val$dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;

.field private final synthetic val$dotNumber:Ljava/lang/String;

.field private final synthetic val$dotState:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;Landroid/widget/ImageView;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotCallType:I

    iput-object p2, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;

    iput-object p5, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotButton:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotState:Landroid/content/SharedPreferences;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 676
    const-string v0, "zdws"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dotCallType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;

    iget v3, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotCallType:I

    invoke-static {v0, v1, v2, v3}, Lcom/isw/android/corp/util/DotInterface;->StartWebView(Landroid/content/Context;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;I)V

    .line 678
    iget-object v0, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 679
    iget-object v0, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotState:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/isw/android/corp/util/DotInterface$1;->val$dotNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 680
    return-void
.end method
