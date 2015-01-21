.class public Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_FragmentShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x10


# instance fields
.field clearColor:Landroid/renderscript/Float4;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_FragmentShaderConstants_s$Item;->clearColor:Landroid/renderscript/Float4;

    .line 37
    return-void
.end method
