.class public Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aliveupdate/ui/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabOnClickListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/zte/aliveupdate/ui/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/zte/aliveupdate/ui/SettingActivity;I)V
    .locals 1
    .parameter
    .parameter "i"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;->this$0:Lcom/zte/aliveupdate/ui/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;->index:I

    .line 135
    iput p2, p0, Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;->index:I

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;->this$0:Lcom/zte/aliveupdate/ui/SettingActivity;

    iget-object v0, v0, Lcom/zte/aliveupdate/ui/SettingActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 141
    return-void
.end method
