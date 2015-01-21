.class public interface abstract Lcom/zte/zdm/d/c/o;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "b64"

.field public static final B:Ljava/lang/String; = "clear"

.field public static final a:Ljava/lang/String; = "application/vnd.syncml+xml"

.field public static final b:Ljava/lang/String; = "application/vnd.syncml+wbxml"

.field public static final c:Ljava/lang/String; = "application/vnd.syncml.dm+xml"

.field public static final d:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final e:Ljava/lang/String; = "application/vnd.syncml-devinf+xml"

.field public static final f:Ljava/lang/String; = "application/vnd.syncml-devinf+wbxml"

.field public static final g:Ljava/lang/String; = "syncml:metinf"

.field public static final h:Ljava/lang/String; = "syncml:devinf"

.field public static final i:Ljava/lang/String; = "none"

.field public static final j:Ljava/lang/String; = "syncml:auth-md5"

.field public static final k:Ljava/lang/String; = "syncml:auth-MAC"

.field public static final l:Ljava/lang/String; = "syncml:auth-basic"

.field public static final m:Ljava/lang/String; = "syncml:auth-clear"

.field public static final n:Ljava/lang/String; = "syncml:auth-basic,syncml:auth-clear,syncml:auth-md5,syncml:auth-MAC"

.field public static final o:Lcom/zte/zdm/d/c/bo; = null

.field public static final p:Lcom/zte/zdm/d/c/bo; = null

.field public static final q:Lcom/zte/zdm/d/c/bo; = null

.field public static final r:Ljava/lang/String; = "application/vnd.syncml.dmtnds+xml"

.field public static final s:Ljava/lang/String; = "application/vnd.syncml.dmtnds+wbxml"

.field public static final t:Ljava/lang/String; = "xml"

.field public static final u:Ljava/lang/String; = "bin"

.field public static final v:Lcom/zte/zdm/d/c/bp;

.field public static final w:Lcom/zte/zdm/d/c/bp;

.field public static final x:Lcom/zte/zdm/d/c/bp;

.field public static final y:Lcom/zte/zdm/d/c/bp;

.field public static final z:Lcom/zte/zdm/d/c/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/bo;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->o:Lcom/zte/zdm/d/c/bo;

    new-instance v0, Lcom/zte/zdm/d/c/bo;

    const-string v1, "1.1"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->p:Lcom/zte/zdm/d/c/bo;

    new-instance v0, Lcom/zte/zdm/d/c/bo;

    const-string v1, "1.2"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->q:Lcom/zte/zdm/d/c/bo;

    new-instance v0, Lcom/zte/zdm/d/c/bp;

    const-string v1, "SyncML/1.0"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->v:Lcom/zte/zdm/d/c/bp;

    new-instance v0, Lcom/zte/zdm/d/c/bp;

    const-string v1, "SyncML/1.1"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->w:Lcom/zte/zdm/d/c/bp;

    new-instance v0, Lcom/zte/zdm/d/c/bp;

    const-string v1, "SyncML/1.1.1"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->x:Lcom/zte/zdm/d/c/bp;

    new-instance v0, Lcom/zte/zdm/d/c/bp;

    const-string v1, "DM/1.1"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->y:Lcom/zte/zdm/d/c/bp;

    new-instance v0, Lcom/zte/zdm/d/c/bp;

    const-string v1, "DM/1.2"

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/bp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/d/c/o;->z:Lcom/zte/zdm/d/c/bp;

    return-void
.end method
