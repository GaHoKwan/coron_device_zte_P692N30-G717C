.class public Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;
.super Ljava/lang/Object;
.source "CallSettings.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/plugin/callsetting/CallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArgs:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "activity"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, this:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<TT;>;"
    .local p3, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "tag"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<TT;>;"
    .local p3, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mActivity:Landroid/app/Activity;

    .line 257
    iput-object p2, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mTag:Ljava/lang/String;

    .line 258
    iput-object p3, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mClass:Ljava/lang/Class;

    .line 259
    iput-object p4, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mArgs:Landroid/os/Bundle;

    .line 264
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    .line 265
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 267
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 268
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 270
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 289
    .local p0, this:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<TT;>;"
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 273
    .local p0, this:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<TT;>;"
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    .line 275
    const v0, 0x1020002

    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 282
    .local p0, this:Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;,"Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener<TT;>;"
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 285
    :cond_0
    return-void
.end method
