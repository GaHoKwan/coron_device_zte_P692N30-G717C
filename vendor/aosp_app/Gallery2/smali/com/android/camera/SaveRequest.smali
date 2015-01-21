.class public interface abstract Lcom/android/camera/SaveRequest;
.super Ljava/lang/Object;
.source "SaveRequest.java"


# virtual methods
.method public abstract addRequest()V
.end method

.method public abstract createThumbnail(I)Lcom/android/camera/Thumbnail;
.end method

.method public abstract getDataSize()I
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getJpegRotation()I
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getTempFilePath()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isIgnoreThumbnail()Z
.end method

.method public abstract notifyListener()V
.end method

.method public abstract prepareRequest()V
.end method

.method public abstract saveRequest()V
.end method

.method public abstract saveSync()V
.end method

.method public abstract setData([B)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setIgnoreThumbnail(Z)V
.end method

.method public abstract setIndex(II)V
.end method

.method public abstract setJpegRotation(I)V
.end method

.method public abstract setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setTag(I)V
.end method

.method public abstract setTempPath(Ljava/lang/String;)V
.end method

.method public abstract setlivePhoto(I)V
.end method

.method public abstract updateDataTaken(J)V
.end method
