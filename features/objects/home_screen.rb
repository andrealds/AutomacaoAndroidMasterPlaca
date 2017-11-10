class HomeScreen

  include Calabash::Android::Operations

  def fechar_anuncio
    tap_when_element_exists('android.widget.ImageButton')
  end

  def fechar_outro_anuncio
    tap_when_element_exists('android.widget.Button')
  end

  def placa_letra(letra)
    touch("android.widget.EditText id:'et_placa_letra'")
    keyboard_enter_text(letra)
    hide_soft_keyboard
  end

  def placa_numero(numero)
    touch("android.widget.EditText id:'et_placa_numero'")
    keyboard_enter_text(numero)
    hide_soft_keyboard
  end

  def botao_pesquisar
  touch('android.widget.ImageButton')
  end

  def texto_placa
  wait_for_elements_exist(["* {text CONTAINS 'SEM RESTRIÇÃO'}"], :timeout => 20)
  end
end