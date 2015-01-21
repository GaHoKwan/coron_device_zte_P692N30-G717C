.class public interface abstract Lcom/powermo/smartshow/frameworks/ISmartShowManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract connectWifiDisplay(Ljava/lang/String;)V
.end method

.method public abstract createOverlayDisplay(Ljava/lang/String;Landroid/view/Surface;IIILandroid/os/IBinder;)I
.end method

.method public abstract exeRemoteCmd(IILjava/lang/String;)I
.end method

.method public abstract getContextId(Landroid/os/IBinder;)I
.end method

.method public abstract getMode()I
.end method

.method public abstract getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getScreenOfPoint(Landroid/graphics/Point;)I
.end method

.method public abstract getScreenRect(I)Landroid/graphics/Rect;
.end method

.method public abstract perform(IILjava/lang/String;)I
.end method

.method public abstract removeOverlayDisplay(Landroid/os/IBinder;)I
.end method

.method public abstract setParameters(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRemoteDisplayConfiguration(Landroid/content/res/Configuration;I)V
.end method

.method public abstract updateData([B)V
.end method
