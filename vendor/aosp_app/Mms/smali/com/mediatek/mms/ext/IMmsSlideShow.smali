.class public interface abstract Lcom/mediatek/mms/ext/IMmsSlideShow;
.super Ljava/lang/Object;
.source "IMmsSlideShow.java"


# static fields
.field public static final PLAY_AS_PAUSE:I = 0x1

.field public static final PLAY_AS_START:I


# virtual methods
.method public abstract addContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Ljava/lang/CharSequence;)V
.end method

.method public abstract configTextView(Landroid/content/Context;Landroid/widget/TextView;)V
.end method

.method public abstract configVideoView(Landroid/widget/VideoView;)V
.end method

.method public abstract getInitialPlayState()I
.end method

.method public abstract init(Lcom/mediatek/mms/ext/IMmsSlideShowHost;)V
.end method
