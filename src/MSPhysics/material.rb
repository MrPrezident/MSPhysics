module MSPhysics

  # @since 1.0.0
  class Material

    # @param [String] name Material name. Passing the name of an existing
    #   material will simply overwrite it.
    # @param [Numeric] density Material density in kilograms per cubic meter.
    # @param [Numeric] static_friction Static friction coefficient. This value
    #   is clamped between +0.01+ and +2.00+.
    # @param [Numeric] dynamic_friction Dynamic friction coefficient. This value
    #   is clamped between +0.01+ and +2.00+.
    # @param [Numeric] elasticity The coefficient of restitution. This is the
    #   rebound ratio. A basketball has a rebound ratio of 0.83. This means the
    #   new height of a basketball is 83% of original height within each bounce.
    #   This value is clamped between +0.01+ and +2.00+.
    # @param [Numeric] softness The softness coefficient. Decreasing softness
    #   yields adaptable collision. Increasing softness yields resistible
    #   collision. This value is clamped between +0.01+ and +1.00+. Typical
    #   value is 0.15.
    def initialize(name, density, static_friction, dynamic_friction, elasticity, softness)
      @name = name.to_s
      @density = AMS.clamp(density, 0.001, nil)
      @static_friction = AMS.clamp(static_friction, 0.01, 2.00)
      @dynamic_friction = AMS.clamp(dynamic_friction, 0.01, 2.00)
      @elasticity = AMS.clamp(elasticity, 0.01, 2.00)
      @softness = AMS.clamp(softness, 0.01, 1.00)
    end

    # Get material name.
    # @return [String]
    def get_name
      @name
    end

    # Get material density in kilograms per cubic meter (kg/m^3).
    # @return [Numeric]
    def get_density
      @density
    end

    # Set material density in kilograms per cubic meter (kg/m^3).
    # @param [Numeric] density
    # @return [Numeric] The new density.
    def set_density(density)
      @density = AMS.clamp(density, 0.001, nil)
    end

    # Get material static friction coefficient.
    # @return [Numeric] A value between 0.01 and 2.00.
    def get_static_friction
      @static_friction
    end

    # Set material static friction coefficient.
    # @param [Numeric] coefficient A value between 0.01 and 2.00.
    # @return [Numeric] The new coefficient.
    def set_static_friction(coefficient)
      @static_friction = AMS.clamp(coefficient, 0.01, 2.00)
    end

    # Get material dynamic friction coefficient.
    # @return [Numeric] A value between 0.01 and 2.00.
    def get_dynamic_friction
      @dynamic_friction
    end

    # Set material dynamic friction coefficient.
    # @param [Numeric] coefficient A value between 0.01 and 2.00.
    # @return [Numeric] The new coefficient.
    def set_dynamic_friction(coefficient)
      @dynamic_friction = AMS.clamp(coefficient, 0.01, 2.00)
    end

    # Get material coefficient of restitution - bounciness.
    # @return [Numeric] A value between 0.01 and 2.00.
    def get_elasticity
      @elasticity
    end

    # Set material coefficient of restitution - bounciness.
    # @param [Numeric] coefficient A value between 0.01 and 2.00.
    # @return [Numeric] The new coefficient.
    def set_elasticity(coefficient)
      @elasticity = AMS.clamp(coefficient, 0.01, 2.00)
    end

    # Get material softness coefficient.
    # @return [Numeric] A value between 0.01 and 1.00.
    def get_softness
      @softness
    end

    # Set material softness coefficient.
    # @param [Numeric] coefficient A value between 0.01 and 1.00.
    # @return [Numeric] The new coefficient.
    def set_softness(coefficient)
      @softness = AMS.clamp(coefficient, 0.01, 1.00)
    end

    # Determine whether current material has the same properties as another
    # material.
    # @param [Material] other_material
    # @return [Boolean]
    def equals?(other_material)
      ( other_material.get_density == @density &&
        other_material.get_static_friction == @static_friction &&
        other_material.get_dynamic_friction == @dynamic_friction &&
        other_material.get_elasticity == @elasticity &&
        other_material.get_softness == @softness )
    end

  end # class Material
end # module MSPhysics
