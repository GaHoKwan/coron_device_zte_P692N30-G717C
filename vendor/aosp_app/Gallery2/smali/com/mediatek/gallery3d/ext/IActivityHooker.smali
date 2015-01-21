.class public interface abstract Lcom/mediatek/gallery3d/ext/IActivityHooker;
.super Ljava/lang/Object;
.source "IActivityHooker.java"


# virtual methods
.method public abstract getContext()Landroid/app/Activity;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getMenuActivityId(I)I
.end method

.method public abstract getMenuOriginalId(I)I
.end method

.method public abstract init(Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method
