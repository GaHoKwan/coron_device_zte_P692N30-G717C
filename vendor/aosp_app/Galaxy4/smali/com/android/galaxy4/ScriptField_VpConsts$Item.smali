.class public Lcom/android/galaxy4/ScriptField_VpConsts$Item;
.super Ljava/lang/Object;
.source "ScriptField_VpConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/galaxy4/ScriptField_VpConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x44


# instance fields
.field MVP:Landroid/renderscript/Matrix4f;

.field scaleSize:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/android/galaxy4/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    .line 38
    return-void
.end method