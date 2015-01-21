.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ARRAY_OF_FIELDS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final CLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MODIFIERS_MASK:I = 0x611

.field private static final CLINIT_MODIFIERS:I = 0x8

.field private static final CLINIT_NAME:Ljava/lang/String; = "<clinit>"

.field private static final CLINIT_SIGNATURE:Ljava/lang/String; = "()V"

.field static final CONSTRUCTOR_IS_NOT_RESOLVED:J = -0x1L

.field private static final EXTERNALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Externalizable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MODIFIERS_MASK:I = 0xdf

.field private static final METHOD_MODIFIERS_MASK:I = 0xd3f

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField; = null

.field static final OBJECTSTREAMCLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SERIALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field static final STRINGCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"

.field private static final WRITE_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x54f190e511018478L

.field private static storage:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient arePropertiesResolved:Z

.field private volatile transient cachedHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private transient className:Ljava/lang/String;

.field private transient constructor:J

.field private transient fields:[Ljava/io/ObjectStreamField;

.field private transient flags:B

.field private transient isEnum:Z

.field private transient isExternalizable:Z

.field private transient isProxy:Z

.field private transient isSerializable:Z

.field private transient loadFields:[Ljava/io/ObjectStreamField;

.field private transient methodReadObject:Ljava/lang/reflect/Method;

.field private transient methodReadObjectNoData:Ljava/lang/reflect/Method;

.field private transient methodReadResolve:Ljava/lang/reflect/Method;

.field private transient methodWriteObject:Ljava/lang/reflect/Method;

.field private transient methodWriteReplace:Ljava/lang/reflect/Method;

.field private transient reflectionFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private transient resolvedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorMethodId:I

.field private transient superclass:Ljava/io/ObjectStreamClass;

.field private transient svUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectInputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    .line 71
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectOutputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    .line 76
    new-array v1, v3, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 85
    :try_start_0
    const-string v1, "[Ljava.io.ObjectStreamField;"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const-class v1, Ljava/io/Serializable;

    sput-object v1, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    .line 101
    const-class v1, Ljava/io/Externalizable;

    sput-object v1, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    .line 104
    const-class v1, Ljava/lang/String;

    sput-object v1, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    .line 106
    const-class v1, Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    .line 108
    const-class v1, Ljava/io/ObjectStreamClass;

    sput-object v1, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    .line 1078
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    .line 178
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    .line 222
    return-void
.end method

.method private static computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J
    .locals 27
    .parameter
    .parameter "fields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")J"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_1

    .line 394
    aget-object v8, p1, v11

    .line 395
    .local v8, field:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 396
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    .line 397
    .local v20, modifiers:I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 398
    const-string v24, "serialVersionUID"

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 404
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 407
    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    .line 583
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v20           #modifiers:I
    :goto_1
    return-wide v24

    .line 408
    .restart local v8       #field:Ljava/lang/reflect/Field;
    .restart local v20       #modifiers:I
    :catch_0
    move-exception v12

    .line 409
    .local v12, iae:Ljava/lang/IllegalAccessException;
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error fetching SUID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 393
    .end local v12           #iae:Ljava/lang/IllegalAccessException;
    .end local v20           #modifiers:I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 418
    .end local v8           #field:Ljava/lang/reflect/Field;
    :cond_1
    :try_start_1
    const-string v24, "SHA"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 422
    .local v6, digest:Ljava/security/MessageDigest;
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 424
    .local v22, sha:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v21, Ljava/io/DataOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 425
    .local v21, output:Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x611

    .line 432
    .local v2, classModifiers:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    move-result v15

    .line 433
    .local v15, isArray:Z
    if-eqz v15, :cond_2

    .line 434
    or-int/lit16 v2, v2, 0x400

    .line 437
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v24

    if-nez v24, :cond_3

    .line 438
    and-int/lit16 v2, v2, -0x401

    .line 440
    :cond_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 447
    if-nez v15, :cond_5

    .line 449
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v14

    .line 450
    .local v14, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v0, v14

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 453
    new-instance v13, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v13}, Ljava/io/ObjectStreamClass$1;-><init>()V

    .line 458
    .local v13, interfaceComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    invoke-static {v14, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 462
    .end local v13           #interfaceComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    :cond_4
    const/4 v11, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    .line 463
    aget-object v24, v14, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 462
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 419
    .end local v2           #classModifiers:I
    .end local v6           #digest:Ljava/security/MessageDigest;
    .end local v14           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v15           #isArray:Z
    .end local v21           #output:Ljava/io/DataOutputStream;
    .end local v22           #sha:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v7

    .line 420
    .local v7, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v24, Ljava/lang/Error;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 468
    .end local v7           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #classModifiers:I
    .restart local v6       #digest:Ljava/security/MessageDigest;
    .restart local v15       #isArray:Z
    .restart local v21       #output:Ljava/io/DataOutputStream;
    .restart local v22       #sha:Ljava/io/ByteArrayOutputStream;
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 471
    new-instance v9, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v9}, Ljava/io/ObjectStreamClass$2;-><init>()V

    .line 476
    .local v9, fieldComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 480
    .end local v9           #fieldComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    :cond_6
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_a

    .line 481
    aget-object v8, p1, v11

    .line 482
    .restart local v8       #field:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xdf

    move/from16 v20, v0

    .line 484
    .restart local v20       #modifiers:I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v24

    if-nez v24, :cond_7

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-eqz v24, :cond_9

    :cond_7
    const/16 v23, 0x1

    .line 486
    .local v23, skip:Z
    :goto_4
    if-nez v23, :cond_8

    .line 489
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 491
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 480
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 484
    .end local v23           #skip:Z
    :cond_9
    const/16 v23, 0x0

    goto :goto_4

    .line 500
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v20           #modifiers:I
    :cond_a
    invoke-static/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->hasClinit(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 502
    const-string v24, "<clinit>"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 503
    const/16 v24, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 504
    const-string v24, "()V"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 508
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 509
    .local v5, constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    array-length v0, v5

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    .line 512
    new-instance v4, Ljava/io/ObjectStreamClass$3;

    invoke-direct {v4}, Ljava/io/ObjectStreamClass$3;-><init>()V

    .line 520
    .local v4, constructorComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 524
    .end local v4           #constructorComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    :cond_c
    const/4 v11, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_e

    .line 525
    aget-object v3, v5, v11

    .line 526
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v20, v0

    .line 528
    .restart local v20       #modifiers:I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v16

    .line 529
    .local v16, isPrivate:Z
    if-nez v16, :cond_d

    .line 537
    const-string v24, "<init>"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 539
    invoke-static {v3}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2f

    const/16 v26, 0x2e

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 524
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 546
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v16           #isPrivate:Z
    .end local v20           #modifiers:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v19

    .line 547
    .local v19, methods:[Ljava/lang/reflect/Method;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 548
    new-instance v18, Ljava/io/ObjectStreamClass$4;

    invoke-direct/range {v18 .. v18}, Ljava/io/ObjectStreamClass$4;-><init>()V

    .line 560
    .local v18, methodComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 564
    .end local v18           #methodComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    :cond_f
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_11

    .line 565
    aget-object v17, v19, v11

    .line 566
    .local v17, method:Ljava/lang/reflect/Method;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v20, v0

    .line 567
    .restart local v20       #modifiers:I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v16

    .line 568
    .restart local v16       #isPrivate:Z
    if-nez v16, :cond_10

    .line 571
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 573
    invoke-static/range {v17 .. v17}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2f

    const/16 v26, 0x2e

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 564
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 577
    .end local v2           #classModifiers:I
    .end local v5           #constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v15           #isArray:Z
    .end local v16           #isPrivate:Z
    .end local v17           #method:Ljava/lang/reflect/Method;
    .end local v19           #methods:[Ljava/lang/reflect/Method;
    .end local v20           #modifiers:I
    .end local v21           #output:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v7

    .line 578
    .local v7, e:Ljava/io/IOException;
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " computing SHA-1/SUID"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 582
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #classModifiers:I
    .restart local v5       #constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .restart local v15       #isArray:Z
    .restart local v19       #methods:[Ljava/lang/reflect/Method;
    .restart local v21       #output:Ljava/io/DataOutputStream;
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 583
    .local v10, hash:[B
    const/16 v24, 0x0

    sget-object v25, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v24

    goto/16 :goto_1
.end method

.method private copyFieldAttributes()V
    .locals 6

    .prologue
    .line 837
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v5, :cond_1

    .line 853
    :cond_0
    return-void

    .line 841
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 842
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    aget-object v3, v5, v1

    .line 843
    .local v3, loadField:Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    .line 844
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 845
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v5, v2

    .line 846
    .local v0, field:Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 847
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setUnshared(Z)V

    .line 848
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 841
    .end local v0           #field:Ljava/io/ObjectStreamField;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    .restart local v0       #field:Ljava/io/ObjectStreamField;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v7, Ljava/io/ObjectStreamClass;

    invoke-direct {v7}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 236
    .local v7, result:Ljava/io/ObjectStreamClass;
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 237
    .local v5, isArray:Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v8

    .line 238
    .local v8, serializable:Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    .line 240
    .local v1, externalizable:Z
    iput-boolean v8, v7, Ljava/io/ObjectStreamClass;->isSerializable:Z

    .line 241
    iput-boolean v1, v7, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    .line 244
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v7, p0}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 247
    .local v9, superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v9, :cond_0

    .line 248
    invoke-static {v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 254
    .local v0, declaredFields:[Ljava/lang/reflect/Field;
    if-nez v8, :cond_1

    if-eqz v1, :cond_3

    .line 255
    :cond_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 256
    :cond_2
    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 264
    :cond_3
    :goto_0
    if-eqz v8, :cond_6

    if-nez v5, :cond_6

    .line 265
    if-nez v0, :cond_4

    .line 266
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 268
    :cond_4
    invoke-virtual {v7, v0}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 276
    :goto_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 278
    .local v2, fields:[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_8

    .line 279
    array-length v10, v2

    new-array v6, v10, [Ljava/io/ObjectStreamField;

    .line 281
    .local v6, loadFields:[Ljava/io/ObjectStreamField;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_7

    .line 282
    new-instance v10, Ljava/io/ObjectStreamField;

    aget-object v11, v2, v4

    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v12

    aget-object v13, v2, v4

    invoke-virtual {v13}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v10, v6, v4

    .line 287
    aget-object v10, v6, v4

    invoke-virtual {v10}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    .line 281
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 258
    .end local v2           #fields:[Ljava/io/ObjectStreamField;
    .end local v4           #i:I
    .end local v6           #loadFields:[Ljava/io/ObjectStreamField;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 259
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    goto :goto_0

    .line 271
    :cond_6
    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_1

    .line 289
    .restart local v2       #fields:[Ljava/io/ObjectStreamField;
    .restart local v4       #i:I
    .restart local v6       #loadFields:[Ljava/io/ObjectStreamField;
    :cond_7
    invoke-virtual {v7, v6}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 292
    .end local v4           #i:I
    .end local v6           #loadFields:[Ljava/io/ObjectStreamField;
    :cond_8
    const/4 v3, 0x0

    .line 293
    .local v3, flags:B
    if-eqz v1, :cond_b

    .line 294
    const/4 v10, 0x4

    int-to-byte v3, v10

    .line 295
    or-int/lit8 v10, v3, 0x8

    int-to-byte v3, v10

    .line 299
    :cond_9
    :goto_3
    const-string v10, "writeReplace"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    .line 300
    const-string v10, "readResolve"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    .line 301
    const-string v10, "writeObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    .line 302
    const-string v10, "readObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    .line 303
    const-string v10, "readObjectNoData"

    sget-object v11, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    .line 304
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 305
    or-int/lit8 v10, v3, 0x1

    int-to-byte v3, v10

    .line 307
    :cond_a
    invoke-virtual {v7, v3}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 309
    return-object v7

    .line 296
    :cond_b
    if-eqz v8, :cond_9

    .line 297
    const/4 v10, 0x2

    int-to-byte v3, v10

    goto :goto_3
.end method

.method private static descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "signature"

    .prologue
    .line 595
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "signature"

    .prologue
    .line 607
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "serialPersistentFields"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 623
    .local v0, f:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 624
    .local v1, modifiers:I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 633
    .end local v0           #f:Ljava/lang/reflect/Field;
    .end local v1           #modifiers:I
    :goto_0
    return-object v0

    .line 630
    :catch_0
    move-exception v2

    .line 633
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1105
    move-object v1, p0

    .line 1106
    .local v1, search:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1107
    .local v0, method:Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v1, :cond_2

    .line 1109
    const/4 v2, 0x0

    :try_start_0
    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1110
    if-eq v1, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1112
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 1119
    :goto_1
    return-object v2

    .line 1115
    :catch_0
    move-exception v2

    .line 1117
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 1119
    goto :goto_1
.end method

.method static findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1135
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, param:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1136
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 1137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 1140
    :catch_0
    move-exception v1

    .line 1143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCache()Ljava/util/WeakHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    sget-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    .line 1083
    .local v0, tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Ljava/io/ObjectStreamClass$5;

    .end local v0           #tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    invoke-direct {v0}, Ljava/io/ObjectStreamClass$5;-><init>()V

    .line 1089
    .restart local v0       #tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    .line 1091
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    return-object v1
.end method

.method private static native getConstructorId(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation
.end method

.method static native getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method

.method static native getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method private static native hasClinit(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method private inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, c1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, c2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v5, 0x2e

    const/4 v4, 0x0

    .line 736
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, nameC1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, nameC2:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 739
    .local v0, indexDotC1:I
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 740
    .local v1, indexDotC2:I
    if-eq v0, v1, :cond_0

    .line 746
    :goto_0
    return v4

    .line 743
    :cond_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 744
    const/4 v4, 0x1

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {v2, v4, v3, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method static isExternalizable(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPrimitiveType(C)Z
    .locals 1
    .parameter "typecode"

    .prologue
    .line 968
    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSerializable(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 984
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1036
    .local v0, osc:Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0           #osc:Ljava/io/ObjectStreamClass;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #osc:Ljava/io/ObjectStreamClass;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1050
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1064
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/io/ObjectStreamClass;->getCache()Ljava/util/WeakHashMap;

    move-result-object v1

    .line 1065
    .local v1, tlc:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;"
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectStreamClass;

    .line 1066
    .local v0, cachedValue:Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_0

    .line 1067
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1068
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    :cond_0
    return-object v0
.end method

.method private makeHierarchy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/ObjectStreamClass;>;"
    move-object v0, p0

    .local v0, osc:Ljava/io/ObjectStreamClass;
    :goto_0
    if-eqz v0, :cond_0

    .line 824
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 823
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_0
    return-object v1
.end method

.method private static native newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private primitiveSize(Ljava/lang/Class;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1276
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 1277
    :cond_0
    const/4 v0, 0x1

    .line 1286
    :goto_0
    return v0

    .line 1279
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 1280
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1282
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 1283
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1285
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 1286
    :cond_6
    const/16 v0, 0x8

    goto :goto_0

    .line 1288
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .local p1, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 659
    iget-object v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    if-eqz v10, :cond_0

    .line 660
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    .line 721
    :goto_0
    return-object v2

    .line 666
    :cond_0
    move-object v2, p1

    .line 670
    .local v2, constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    move v8, v7

    .line 671
    .local v8, wasSerializable:Z
    :goto_1
    if-eqz v8, :cond_2

    .line 675
    :goto_2
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 676
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    .end local v8           #wasSerializable:Z
    :cond_1
    move v8, v9

    .line 670
    goto :goto_1

    .line 681
    .restart local v8       #wasSerializable:Z
    :cond_2
    const/4 v1, 0x0

    .line 682
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v2, :cond_3

    .line 684
    :try_start_0
    sget-object v10, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 690
    :cond_3
    :goto_3
    if-nez v1, :cond_5

    .line 691
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, className:Ljava/lang/String;
    :goto_4
    new-instance v9, Ljava/io/InvalidClassException;

    const-string v10, "IllegalAccessException"

    invoke-direct {v9, v0, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 691
    .end local v0           #className:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 695
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    .line 696
    .local v3, constructorModifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    .line 697
    .local v6, isPublic:Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    .line 698
    .local v5, isProtected:Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    .line 702
    .local v4, isPrivate:Z
    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_7

    .line 703
    .local v7, wasExternalizable:Z
    :goto_5
    if-nez v4, :cond_6

    if-eqz v7, :cond_8

    if-nez v6, :cond_8

    .line 704
    :cond_6
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .end local v7           #wasExternalizable:Z
    :cond_7
    move v7, v9

    .line 702
    goto :goto_5

    .line 711
    .restart local v7       #wasExternalizable:Z
    :cond_8
    if-nez v6, :cond_9

    if-nez v5, :cond_9

    .line 714
    invoke-direct {p0, v2, p1}, Ljava/io/ObjectStreamClass;->inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 715
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 719
    :cond_9
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    .line 720
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    invoke-static {v9}, Ljava/io/ObjectStreamClass;->getConstructorId(Ljava/lang/Class;)I

    move-result v9

    iput v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:I

    goto :goto_0

    .line 685
    .end local v3           #constructorModifiers:I
    .end local v4           #isPrivate:Z
    .end local v5           #isProtected:Z
    .end local v6           #isPublic:Z
    .end local v7           #wasExternalizable:Z
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method private resolveProperties()V
    .locals 2

    .prologue
    .line 991
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    if-eqz v1, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 996
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 997
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 998
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    .line 999
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    .line 1001
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    goto :goto_0
.end method


# virtual methods
.method buildFieldDescriptors([Ljava/lang/reflect/Field;)V
    .locals 20
    .parameter "declaredFields"

    .prologue
    .line 322
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/io/ObjectStreamClass;->fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 325
    .local v6, f:Ljava/lang/reflect/Field;
    if-nez v6, :cond_0

    const/16 v17, 0x1

    .line 329
    .local v17, useReflectFields:Z
    :goto_0
    const/4 v2, 0x0

    .line 330
    .local v2, _fields:[Ljava/io/ObjectStreamField;
    if-nez v17, :cond_1

    .line 333
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 336
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/io/ObjectStreamField;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 363
    const/4 v14, 0x0

    .local v14, primOffset:I
    const/4 v12, 0x0

    .line 364
    .local v12, objectOffset:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 365
    aget-object v18, v2, v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v16

    .line 366
    .local v16, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 367
    aget-object v18, v2, v8

    move-object/from16 v0, v18

    iput v14, v0, Ljava/io/ObjectStreamField;->offset:I

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/ObjectStreamClass;->primitiveSize(Ljava/lang/Class;)I

    move-result v18

    add-int v14, v14, v18

    .line 364
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 325
    .end local v2           #_fields:[Ljava/io/ObjectStreamField;
    .end local v8           #i:I
    .end local v12           #objectOffset:I
    .end local v14           #primOffset:I
    .end local v16           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v17           #useReflectFields:Z
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 337
    .restart local v2       #_fields:[Ljava/io/ObjectStreamField;
    .restart local v17       #useReflectFields:Z
    :catch_0
    move-exception v5

    .line 338
    .local v5, ex:Ljava/lang/IllegalAccessException;
    new-instance v18, Ljava/lang/AssertionError;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 342
    .end local v5           #ex:Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v15, serializableFields:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    move-object/from16 v3, p1

    .local v3, arr$:[Ljava/lang/reflect/Field;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_4
    if-ge v9, v10, :cond_3

    aget-object v4, v3, v9

    .line 346
    .local v4, declaredField:Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 347
    .local v11, modifiers:I
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 348
    new-instance v7, Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 350
    .local v7, field:Ljava/io/ObjectStreamField;
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v7           #field:Ljava/io/ObjectStreamField;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 354
    .end local v4           #declaredField:Ljava/lang/reflect/Field;
    .end local v11           #modifiers:I
    :cond_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_4

    .line 355
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_1

    .line 358
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #_fields:[Ljava/io/ObjectStreamField;
    check-cast v2, [Ljava/io/ObjectStreamField;

    .restart local v2       #_fields:[Ljava/io/ObjectStreamField;
    goto/16 :goto_1

    .line 370
    .end local v3           #arr$:[Ljava/lang/reflect/Field;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v15           #serializableFields:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    .restart local v8       #i:I
    .restart local v12       #objectOffset:I
    .restart local v14       #primOffset:I
    .restart local v16       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    aget-object v18, v2, v8

    add-int/lit8 v13, v12, 0x1

    .end local v12           #objectOffset:I
    .local v13, objectOffset:I
    move-object/from16 v0, v18

    iput v12, v0, Ljava/io/ObjectStreamField;->offset:I

    move v12, v13

    .end local v13           #objectOffset:I
    .restart local v12       #objectOffset:I
    goto :goto_3

    .line 373
    .end local v16           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 374
    return-void
.end method

.method fields()[Ljava/io/ObjectStreamField;
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v1, :cond_0

    .line 788
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 789
    .local v0, forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    .line 790
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 796
    .end local v0           #forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-object v1

    .line 793
    .restart local v0       #forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_0
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    return-object v0
.end method

.method getConstructor()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    return-wide v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .locals 4
    .parameter "name"

    .prologue
    .line 769
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 770
    .local v0, allFields:[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 771
    aget-object v1, v0, v2

    .line 772
    .local v1, f:Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 776
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :goto_1
    return-object v1

    .line 770
    .restart local v1       #f:Ljava/io/ObjectStreamField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->copyFieldAttributes()V

    .line 808
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    goto :goto_0
.end method

.method getFlags()B
    .locals 1

    .prologue
    .line 885
    iget-byte v0, p0, Ljava/io/ObjectStreamClass;->flags:B

    return v0
.end method

.method getHierarchy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    .line 815
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez v0, :cond_0

    .line 816
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->makeHierarchy()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    .line 818
    :cond_0
    return-object v0
.end method

.method getLoadFields()[Ljava/io/ObjectStreamField;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method getMethodReadObject()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadObjectNoData()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadResolve()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteObject()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteReplace()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    return-object v0
.end method

.method getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;
    .locals 5
    .parameter "osf"

    .prologue
    .line 189
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v4

    .line 190
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 191
    .local v2, field:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 192
    monitor-exit v4

    move-object v3, v2

    .line 206
    :goto_0
    return-object v3

    .line 194
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 198
    .local v0, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 199
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 200
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :try_start_2
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    :try_start_3
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 194
    .end local v0           #declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #field:Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 202
    .restart local v0       #declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #field:Ljava/lang/reflect/Field;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_0

    .line 204
    .end local v0           #declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 206
    .local v1, ex:Ljava/lang/NoSuchFieldException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSerialVersionUID()J
    .locals 2

    .prologue
    .line 913
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->svUID:J

    return-wide v0
.end method

.method getSuperclass()Ljava/io/ObjectStreamClass;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method hasMethodReadObject()Z
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodReadObjectNoData()Z
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodReadResolve()Z
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodWriteObject()Z
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodWriteReplace()Z
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initPrivateFields(Ljava/io/ObjectStreamClass;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 1187
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    .line 1188
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    .line 1189
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    .line 1190
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    .line 1191
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    .line 1192
    return-void
.end method

.method isEnum()Z
    .locals 1

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1021
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method isExternalizable()Z
    .locals 1

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1011
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    return v0
.end method

.method isProxy()Z
    .locals 1

    .prologue
    .line 1015
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1016
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method isSerializable()Z
    .locals 1

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1006
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    return v0
.end method

.method newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 653
    .local p1, instantiationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamClass;->resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 654
    iget v0, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:I

    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    .line 1202
    return-void
.end method

.method setConstructor(J)V
    .locals 0
    .parameter "newConstructor"

    .prologue
    .line 181
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->constructor:J

    .line 182
    return-void
.end method

.method setFields([Ljava/io/ObjectStreamField;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1213
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 1214
    return-void
.end method

.method setFlags(B)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1239
    iput-byte p1, p0, Ljava/io/ObjectStreamClass;->flags:B

    .line 1240
    return-void
.end method

.method setLoadFields([Ljava/io/ObjectStreamField;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1225
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    .line 1226
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "newName"

    .prologue
    .line 1250
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    .line 1251
    return-void
.end method

.method setSerialVersionUID(J)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1260
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->svUID:J

    .line 1261
    return-void
.end method

.method setSuperclass(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1272
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    .line 1273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": static final long serialVersionUID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
