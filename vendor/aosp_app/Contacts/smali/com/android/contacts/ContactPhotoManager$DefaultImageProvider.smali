.class public abstract Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultImageProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyDefaultImage(Landroid/widget/ImageView;IZ)V
.end method

.method public abstract applySimDefaultImage(Landroid/widget/ImageView;JZ)V
.end method
